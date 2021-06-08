PGDMP                         y            examenes    13.2    13.2 ;               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24632    examenes    DATABASE     l   CREATE DATABASE examenes WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_United States.1252';
    DROP DATABASE examenes;
                postgres    false            �            1259    24633    acceso    TABLE     �   CREATE TABLE public.acceso (
    codigo character varying(50) NOT NULL,
    nombre character varying(50) NOT NULL,
    password character varying(50),
    rol character varying(40) NOT NULL
);
    DROP TABLE public.acceso;
       public         heap    postgres    false            �            1259    24636    alumnos    TABLE     �   CREATE TABLE public.alumnos (
    no_matricula integer NOT NULL,
    nombre character varying(30) NOT NULL,
    grupo_clase character varying(30)
);
    DROP TABLE public.alumnos;
       public         heap    postgres    false            �            1259    24639    alumnos_controles_escritos    TABLE     �   CREATE TABLE public.alumnos_controles_escritos (
    fecha date,
    calificacion double precision NOT NULL,
    alumnos_no_matricula integer NOT NULL,
    controles_escritos_no_control integer NOT NULL
);
 .   DROP TABLE public.alumnos_controles_escritos;
       public         heap    postgres    false            �            1259    24642    alumnos_controles_practicos    TABLE     �   CREATE TABLE public.alumnos_controles_practicos (
    fecha date,
    califiacion double precision NOT NULL,
    alumnos_no_matricula integer NOT NULL,
    controles_practicos_cod_practica integer NOT NULL
);
 /   DROP TABLE public.alumnos_controles_practicos;
       public         heap    postgres    false            �            1259    24645    alumnos_no_matricula_seq    SEQUENCE     �   CREATE SEQUENCE public.alumnos_no_matricula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.alumnos_no_matricula_seq;
       public          postgres    false    201                       0    0    alumnos_no_matricula_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.alumnos_no_matricula_seq OWNED BY public.alumnos.no_matricula;
          public          postgres    false    204            �            1259    24647    controles_escritos    TABLE     h   CREATE TABLE public.controles_escritos (
    no_control integer NOT NULL,
    cant_preguntas integer
);
 &   DROP TABLE public.controles_escritos;
       public         heap    postgres    false            �            1259    24650 !   controles_escritos_no_control_seq    SEQUENCE     �   CREATE SEQUENCE public.controles_escritos_no_control_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.controles_escritos_no_control_seq;
       public          postgres    false    205                       0    0 !   controles_escritos_no_control_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.controles_escritos_no_control_seq OWNED BY public.controles_escritos.no_control;
          public          postgres    false    206            �            1259    24652    controles_practicos    TABLE     �   CREATE TABLE public.controles_practicos (
    cod_practica integer NOT NULL,
    titulo character varying(70),
    niv_dificultad character varying(10)
);
 '   DROP TABLE public.controles_practicos;
       public         heap    postgres    false            �            1259    24655 $   controles_practicos_cod_practica_seq    SEQUENCE     �   CREATE SEQUENCE public.controles_practicos_cod_practica_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.controles_practicos_cod_practica_seq;
       public          postgres    false    207                       0    0 $   controles_practicos_cod_practica_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.controles_practicos_cod_practica_seq OWNED BY public.controles_practicos.cod_practica;
          public          postgres    false    208            �            1259    24657    controles_practicos_profesores    TABLE     �   CREATE TABLE public.controles_practicos_profesores (
    controles_practicos_cod_practica integer NOT NULL,
    profesores_dni character varying(30) NOT NULL,
    "fecha_dise¤o" date
);
 2   DROP TABLE public.controles_practicos_profesores;
       public         heap    postgres    false            �            1259    24660 	   preguntas    TABLE     �   CREATE TABLE public.preguntas (
    id integer NOT NULL,
    descripcion text,
    puntos double precision NOT NULL,
    controles_escritos_no_control integer NOT NULL
);
    DROP TABLE public.preguntas;
       public         heap    postgres    false            �            1259    24666    preguntas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.preguntas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.preguntas_id_seq;
       public          postgres    false    210                       0    0    preguntas_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.preguntas_id_seq OWNED BY public.preguntas.id;
          public          postgres    false    211            �            1259    24668 
   profesores    TABLE     �   CREATE TABLE public.profesores (
    dni character varying(15) NOT NULL,
    nombre character varying(30) NOT NULL,
    apellido character varying(30)
);
    DROP TABLE public.profesores;
       public         heap    postgres    false            �            1259    24671 
   respuestas    TABLE     �   CREATE TABLE public.respuestas (
    id integer NOT NULL,
    respuesta text,
    correcta integer,
    pregunta_id integer NOT NULL
);
    DROP TABLE public.respuestas;
       public         heap    postgres    false            �            1259    24677    respuestas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.respuestas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.respuestas_id_seq;
       public          postgres    false    213            	           0    0    respuestas_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.respuestas_id_seq OWNED BY public.respuestas.id;
          public          postgres    false    214            �            1259    24736    vistaprofesores    VIEW     �   CREATE VIEW public.vistaprofesores AS
 SELECT profesores.dni,
    profesores.nombre,
    profesores.apellido
   FROM public.profesores;
 "   DROP VIEW public.vistaprofesores;
       public          postgres    false    212    212    212            T           2604    24679    alumnos no_matricula    DEFAULT     |   ALTER TABLE ONLY public.alumnos ALTER COLUMN no_matricula SET DEFAULT nextval('public.alumnos_no_matricula_seq'::regclass);
 C   ALTER TABLE public.alumnos ALTER COLUMN no_matricula DROP DEFAULT;
       public          postgres    false    204    201            U           2604    24680    controles_escritos no_control    DEFAULT     �   ALTER TABLE ONLY public.controles_escritos ALTER COLUMN no_control SET DEFAULT nextval('public.controles_escritos_no_control_seq'::regclass);
 L   ALTER TABLE public.controles_escritos ALTER COLUMN no_control DROP DEFAULT;
       public          postgres    false    206    205            V           2604    24681     controles_practicos cod_practica    DEFAULT     �   ALTER TABLE ONLY public.controles_practicos ALTER COLUMN cod_practica SET DEFAULT nextval('public.controles_practicos_cod_practica_seq'::regclass);
 O   ALTER TABLE public.controles_practicos ALTER COLUMN cod_practica DROP DEFAULT;
       public          postgres    false    208    207            W           2604    24682    preguntas id    DEFAULT     l   ALTER TABLE ONLY public.preguntas ALTER COLUMN id SET DEFAULT nextval('public.preguntas_id_seq'::regclass);
 ;   ALTER TABLE public.preguntas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            X           2604    24683    respuestas id    DEFAULT     n   ALTER TABLE ONLY public.respuestas ALTER COLUMN id SET DEFAULT nextval('public.respuestas_id_seq'::regclass);
 <   ALTER TABLE public.respuestas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            �          0    24633    acceso 
   TABLE DATA           ?   COPY public.acceso (codigo, nombre, password, rol) FROM stdin;
    public          postgres    false    200   3I       �          0    24636    alumnos 
   TABLE DATA           D   COPY public.alumnos (no_matricula, nombre, grupo_clase) FROM stdin;
    public          postgres    false    201   \M       �          0    24639    alumnos_controles_escritos 
   TABLE DATA           ~   COPY public.alumnos_controles_escritos (fecha, calificacion, alumnos_no_matricula, controles_escritos_no_control) FROM stdin;
    public          postgres    false    202   �N       �          0    24642    alumnos_controles_practicos 
   TABLE DATA           �   COPY public.alumnos_controles_practicos (fecha, califiacion, alumnos_no_matricula, controles_practicos_cod_practica) FROM stdin;
    public          postgres    false    203   8O       �          0    24647    controles_escritos 
   TABLE DATA           H   COPY public.controles_escritos (no_control, cant_preguntas) FROM stdin;
    public          postgres    false    205   UO       �          0    24652    controles_practicos 
   TABLE DATA           S   COPY public.controles_practicos (cod_practica, titulo, niv_dificultad) FROM stdin;
    public          postgres    false    207   �O       �          0    24657    controles_practicos_profesores 
   TABLE DATA           {   COPY public.controles_practicos_profesores (controles_practicos_cod_practica, profesores_dni, "fecha_dise¤o") FROM stdin;
    public          postgres    false    209   P       �          0    24660 	   preguntas 
   TABLE DATA           [   COPY public.preguntas (id, descripcion, puntos, controles_escritos_no_control) FROM stdin;
    public          postgres    false    210   nP       �          0    24668 
   profesores 
   TABLE DATA           ;   COPY public.profesores (dni, nombre, apellido) FROM stdin;
    public          postgres    false    212   �P       �          0    24671 
   respuestas 
   TABLE DATA           J   COPY public.respuestas (id, respuesta, correcta, pregunta_id) FROM stdin;
    public          postgres    false    213   �R       
           0    0    alumnos_no_matricula_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.alumnos_no_matricula_seq', 1, false);
          public          postgres    false    204                       0    0 !   controles_escritos_no_control_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.controles_escritos_no_control_seq', 1, false);
          public          postgres    false    206                       0    0 $   controles_practicos_cod_practica_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.controles_practicos_cod_practica_seq', 1, false);
          public          postgres    false    208                       0    0    preguntas_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.preguntas_id_seq', 1, false);
          public          postgres    false    211                       0    0    respuestas_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.respuestas_id_seq', 1, false);
          public          postgres    false    214            Z           2606    24685    alumnos alumnos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (no_matricula);
 >   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT alumnos_pkey;
       public            postgres    false    201            \           2606    24687 *   controles_escritos controles_escritos_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.controles_escritos
    ADD CONSTRAINT controles_escritos_pkey PRIMARY KEY (no_control);
 T   ALTER TABLE ONLY public.controles_escritos DROP CONSTRAINT controles_escritos_pkey;
       public            postgres    false    205            ^           2606    24689 ,   controles_practicos controles_practicos_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.controles_practicos
    ADD CONSTRAINT controles_practicos_pkey PRIMARY KEY (cod_practica);
 V   ALTER TABLE ONLY public.controles_practicos DROP CONSTRAINT controles_practicos_pkey;
       public            postgres    false    207            `           2606    24691    preguntas preguntas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.preguntas
    ADD CONSTRAINT preguntas_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.preguntas DROP CONSTRAINT preguntas_pkey;
       public            postgres    false    210            b           2606    24693    profesores profesores_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT profesores_pkey PRIMARY KEY (dni);
 D   ALTER TABLE ONLY public.profesores DROP CONSTRAINT profesores_pkey;
       public            postgres    false    212            d           2606    24695    respuestas respuestas_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.respuestas
    ADD CONSTRAINT respuestas_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.respuestas DROP CONSTRAINT respuestas_pkey;
       public            postgres    false    213            e           2606    24696 8   alumnos_controles_escritos fk_alumnos_controles_escritos    FK CONSTRAINT     �   ALTER TABLE ONLY public.alumnos_controles_escritos
    ADD CONSTRAINT fk_alumnos_controles_escritos FOREIGN KEY (alumnos_no_matricula) REFERENCES public.alumnos(no_matricula);
 b   ALTER TABLE ONLY public.alumnos_controles_escritos DROP CONSTRAINT fk_alumnos_controles_escritos;
       public          postgres    false    202    2906    201            g           2606    24701 :   alumnos_controles_practicos fk_alumnos_controles_practicos    FK CONSTRAINT     �   ALTER TABLE ONLY public.alumnos_controles_practicos
    ADD CONSTRAINT fk_alumnos_controles_practicos FOREIGN KEY (alumnos_no_matricula) REFERENCES public.alumnos(no_matricula);
 d   ALTER TABLE ONLY public.alumnos_controles_practicos DROP CONSTRAINT fk_alumnos_controles_practicos;
       public          postgres    false    2906    201    203            f           2606    24706 8   alumnos_controles_escritos fk_controles_escritos_alumnos    FK CONSTRAINT     �   ALTER TABLE ONLY public.alumnos_controles_escritos
    ADD CONSTRAINT fk_controles_escritos_alumnos FOREIGN KEY (controles_escritos_no_control) REFERENCES public.controles_escritos(no_control);
 b   ALTER TABLE ONLY public.alumnos_controles_escritos DROP CONSTRAINT fk_controles_escritos_alumnos;
       public          postgres    false    2908    205    202            k           2606    24711 )   preguntas fk_controles_escritos_preguntas    FK CONSTRAINT     �   ALTER TABLE ONLY public.preguntas
    ADD CONSTRAINT fk_controles_escritos_preguntas FOREIGN KEY (controles_escritos_no_control) REFERENCES public.controles_escritos(no_control);
 S   ALTER TABLE ONLY public.preguntas DROP CONSTRAINT fk_controles_escritos_preguntas;
       public          postgres    false    2908    205    210            i           2606    24716 6   controles_practicos_profesores fk_controles_practicos_    FK CONSTRAINT     �   ALTER TABLE ONLY public.controles_practicos_profesores
    ADD CONSTRAINT fk_controles_practicos_ FOREIGN KEY (controles_practicos_cod_practica) REFERENCES public.controles_practicos(cod_practica);
 `   ALTER TABLE ONLY public.controles_practicos_profesores DROP CONSTRAINT fk_controles_practicos_;
       public          postgres    false    2910    207    209            h           2606    24721 :   alumnos_controles_practicos fk_controles_practicos_alumnos    FK CONSTRAINT     �   ALTER TABLE ONLY public.alumnos_controles_practicos
    ADD CONSTRAINT fk_controles_practicos_alumnos FOREIGN KEY (controles_practicos_cod_practica) REFERENCES public.controles_practicos(cod_practica);
 d   ALTER TABLE ONLY public.alumnos_controles_practicos DROP CONSTRAINT fk_controles_practicos_alumnos;
       public          postgres    false    207    203    2910            j           2606    24726 @   controles_practicos_profesores fk_controles_practicos_profesores    FK CONSTRAINT     �   ALTER TABLE ONLY public.controles_practicos_profesores
    ADD CONSTRAINT fk_controles_practicos_profesores FOREIGN KEY (profesores_dni) REFERENCES public.profesores(dni);
 j   ALTER TABLE ONLY public.controles_practicos_profesores DROP CONSTRAINT fk_controles_practicos_profesores;
       public          postgres    false    212    209    2914            l           2606    24731 "   respuestas fk_preguntas_respuestas    FK CONSTRAINT     �   ALTER TABLE ONLY public.respuestas
    ADD CONSTRAINT fk_preguntas_respuestas FOREIGN KEY (pregunta_id) REFERENCES public.preguntas(id);
 L   ALTER TABLE ONLY public.respuestas DROP CONSTRAINT fk_preguntas_respuestas;
       public          postgres    false    210    2912    213            �     x���A��6E��S�	,ɖ�eI�%鐒16���d���	r��f����@���IJ��
�M���#�U����v�j��rF�����d���0�Iw��G�'a����b`��___�.�H���7�H����L�=#%���N��i|h�Ut&UJ���S�d~��W�(\	�A���J(�b2�|�=.%�����#��I(y�*���YsD�G��х&+�1�6�v���o���'\���l}tΉi��B�q�D����ʞj�ì�G}s�}����O4�����?Q��Ա��T��`+7�߿by�"��Ԇ|�Z�21}�����M�Ԑ
P*D~X!k:�����}c&_� �>��
�j��|�����E����C�D^���V�0ޛ'�C�?�Se�E^���8���g\���I��\jG~\�NvR�@����ȓ��ejG�c�o�������Q�+ �E��~�z2���V�V9VO	؎w	ݤNF���2��(X�M���'���L��|I��.pA���g"��a�wI[�B�.X�!Mh�7���vҨ�{��b���������������8�>R;���n;��>�������+���q�a��&4�����b
P��@9��<�Y|q��X�*�@������+N�0��_��>΋*�P{&�>�]��uR��m��f@�r b4*|6��-&����\���~���,��=+��~�0"��6T�PWy�o�J�ûX���zUn�����݄��&v~ �p\ _!ù�S��|�Wu�����B�ǃ����H��Z�//	�5ɷ/H�_1�]��7j��Vt~�Ӓ{�O�.w�7r��V�����.��2k�h0�zz��\	�rg�X
����q��@�'a3�:�/�r�γod>+ep�=�"�b����؅L���F �S|��E�\l��G��E��~b�#cL�;�������]�6z������$&���{0�����To4���6[ҷ��<�ό�V:n$��O�(������?~����/�ڑ�      �   W  x���KN�0�uz�\ �ǼX���1�$C��D�ĕXq �n�����s�Ŀ����uݴ
l$�������Q�߿$JY7���ᦩ�����!t0c�ضؕ�|e��-�0ssv�w��p�h���FM�d�_ �����	�.8�{ttB��1��?��H�@�m}�d�6R�|�t���������׵�ZԥF�+e�H.�39ǧ�����E�`���~�Q�!#OT��,U�z�Y��Ţ��8�dwl�I��|M�[�%K���v��wF��J����*�u"�Cl�6��Gsp��wx�輶�!:,���G9
S���%����mUU���M      �   e   x�Uλ�0�v�O���%�ϑ��&�;I(T.�%Aނ� D�`=��F�qx���ux����W^�'Keo�y&�f՗���u����mm���wc�G�0�      �      x������ � �      �   6   x�3700�44�24506�1,9�A����6�4��Pq��)�6���qqq �j,      �   c   x�e̻
�0@�9���k��GG���MP�\��UЇ8sJT`���u���b�(0��	�mZ�y�<Qf*_W��t�m����H�I`9��­B����      �   P   x�M̹�0�ؿ3���%�8#��:#�7�3�۵��$ڄ�;Y'kL�b%����p �M�|�(T��ܖ��} x ���      �   k   x�36153��KTHJ,NUH�Ē�b��b+NCNCScs.c�c��`w'QN�Ģļ�̪�"��D����ԢԼ��D�I9@s �%��&&��%������qqq ��#M      �   �  x�]�Mn�@���)x����-����F��*G�%r�b�\i�v���o�������� ��_I!E~��A���Wڕ��Κ�"1�
�$�K+<V� o���^������'Rޠ$�&�Q���)^8Q�;�L���M�AP��m�����<:�)1��D722��T#�z�y���)]�Ė�A���g$sժ��r�LB�`�<�E�b�:���zF�#�'0�b��7��+�$�j:Ů�E|���$)
��N��[��V��.��6��ӛ�q�H9l�͡�Gə�POj���r��Յ3e�ܾjn�4�T�Љ|��5z"��Y�St�jFmK�yZ��O��*1*�ڹ���y��Q���썎R?�@��'��" }��ww=�NV�����V�� ه��H��ݓ�ݞ�2�=\ń���	�L��7� �b��A�\�S�4z���j��f!�r�"��/������?w��l:�g      �   r   x�-�=!@�:�"�U�]Z
o`m :8,8!��A��W���R�R�c�{ނ/92��ؼNq�s�����p<�W�¥��5	&���-<eJ��6��,��D	��}#��<%)�     