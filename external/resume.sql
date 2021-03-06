PGDMP     !                    w            resume    11.1    11.1 *    H           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            I           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            J           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            K           1262    16532    resume    DATABASE     �   CREATE DATABASE resume WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE resume;
             resume    false            �            1259    16533    certificate    TABLE     �   CREATE TABLE public.certificate (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name character varying(50) NOT NULL,
    large_url character varying(255) NOT NULL,
    small_url character varying(255) NOT NULL
);
    DROP TABLE public.certificate;
       public         resume    false            �            1259    16539    certificate_seq    SEQUENCE     x   CREATE SEQUENCE public.certificate_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.certificate_seq;
       public       resume    false            �            1259    16541    course    TABLE     �   CREATE TABLE public.course (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name character varying(60) NOT NULL,
    school character varying(60) NOT NULL,
    finish_date date
);
    DROP TABLE public.course;
       public         resume    false            �            1259    16544 
   course_seq    SEQUENCE     s   CREATE SEQUENCE public.course_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.course_seq;
       public       resume    false            �            1259    16546 	   education    TABLE       CREATE TABLE public.education (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    summary character varying(100) NOT NULL,
    begin_year integer NOT NULL,
    finish_year integer,
    university text NOT NULL,
    faculty character varying(255) NOT NULL
);
    DROP TABLE public.education;
       public         resume    false            �            1259    16552    education_seq    SEQUENCE     v   CREATE SEQUENCE public.education_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.education_seq;
       public       resume    false            �            1259    16554    hobby    TABLE        CREATE TABLE public.hobby (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name character varying(30) NOT NULL
);
    DROP TABLE public.hobby;
       public         resume    false            �            1259    16557 	   hobby_seq    SEQUENCE     r   CREATE SEQUENCE public.hobby_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.hobby_seq;
       public       resume    false            �            1259    16559    language    TABLE     �   CREATE TABLE public.language (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name character varying(30) NOT NULL,
    level character varying(18) NOT NULL,
    type character varying(7) DEFAULT 0 NOT NULL
);
    DROP TABLE public.language;
       public         resume    false            �            1259    16563    language_seq    SEQUENCE     u   CREATE SEQUENCE public.language_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.language_seq;
       public       resume    false            �            1259    16565    persistent_logins    TABLE     �   CREATE TABLE public.persistent_logins (
    username character varying(64) NOT NULL,
    series character varying(64) NOT NULL,
    token character varying(64) NOT NULL,
    last_used timestamp without time zone NOT NULL
);
 %   DROP TABLE public.persistent_logins;
       public         resume    false            �            1259    16568    practic    TABLE     N  CREATE TABLE public.practic (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    "position" character varying(100) NOT NULL,
    company character varying(100) NOT NULL,
    begin_date date NOT NULL,
    finish_date date,
    responsibilities text NOT NULL,
    demo character varying(255),
    src character varying(255)
);
    DROP TABLE public.practic;
       public         resume    false            �            1259    16574    practic_seq    SEQUENCE     t   CREATE SEQUENCE public.practic_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.practic_seq;
       public       resume    false            �            1259    16576    profile    TABLE     M  CREATE TABLE public.profile (
    id bigint NOT NULL,
    uid character varying(100) NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    birth_day date,
    phone character varying(20),
    email character varying(100),
    country character varying(60),
    city character varying(100),
    objective text,
    summary text,
    large_photo character varying(255),
    small_photo character varying(255),
    info text,
    password character varying(255) NOT NULL,
    completed boolean NOT NULL,
    created timestamp(0) without time zone DEFAULT now() NOT NULL,
    skype character varying(80),
    vkontakte character varying(255),
    facebook character varying(255),
    linkedin character varying(255),
    github character varying(255),
    stackoverflow character varying(255)
);
    DROP TABLE public.profile;
       public         resume    false            �            1259    16583    profile_restore    TABLE     k   CREATE TABLE public.profile_restore (
    id bigint NOT NULL,
    token character varying(255) NOT NULL
);
 #   DROP TABLE public.profile_restore;
       public         resume    false            �            1259    16586    profile_seq    SEQUENCE     t   CREATE SEQUENCE public.profile_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.profile_seq;
       public       resume    false            �            1259    16588    skill    TABLE     �   CREATE TABLE public.skill (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    category character varying(50) NOT NULL,
    value text NOT NULL
);
    DROP TABLE public.skill;
       public         resume    false            �            1259    16594    skill_category    TABLE     l   CREATE TABLE public.skill_category (
    id bigint NOT NULL,
    category character varying(50) NOT NULL
);
 "   DROP TABLE public.skill_category;
       public         resume    false            �            1259    16597 	   skill_seq    SEQUENCE     r   CREATE SEQUENCE public.skill_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.skill_seq;
       public       resume    false            3          0    16533    certificate 
   TABLE DATA               Q   COPY public.certificate (id, id_profile, name, large_url, small_url) FROM stdin;
    public       resume    false    196   M-       5          0    16541    course 
   TABLE DATA               K   COPY public.course (id, id_profile, name, school, finish_date) FROM stdin;
    public       resume    false    198   �:       7          0    16546 	   education 
   TABLE DATA               j   COPY public.education (id, id_profile, summary, begin_year, finish_year, university, faculty) FROM stdin;
    public       resume    false    200   2<       9          0    16554    hobby 
   TABLE DATA               5   COPY public.hobby (id, id_profile, name) FROM stdin;
    public       resume    false    202   ?       ;          0    16559    language 
   TABLE DATA               E   COPY public.language (id, id_profile, name, level, type) FROM stdin;
    public       resume    false    204   �I       =          0    16565    persistent_logins 
   TABLE DATA               O   COPY public.persistent_logins (username, series, token, last_used) FROM stdin;
    public       resume    false    206   �O       >          0    16568    practic 
   TABLE DATA               |   COPY public.practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src) FROM stdin;
    public       resume    false    207   �O       @          0    16576    profile 
   TABLE DATA               �   COPY public.profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow) FROM stdin;
    public       resume    false    209   kV       A          0    16583    profile_restore 
   TABLE DATA               4   COPY public.profile_restore (id, token) FROM stdin;
    public       resume    false    210   ab       C          0    16588    skill 
   TABLE DATA               @   COPY public.skill (id, id_profile, category, value) FROM stdin;
    public       resume    false    212   ~b       D          0    16594    skill_category 
   TABLE DATA               6   COPY public.skill_category (id, category) FROM stdin;
    public       resume    false    213   Xq       L           0    0    certificate_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.certificate_seq', 26, true);
            public       resume    false    197            M           0    0 
   course_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.course_seq', 9, true);
            public       resume    false    199            N           0    0    education_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.education_seq', 24, true);
            public       resume    false    201            O           0    0 	   hobby_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.hobby_seq', 120, true);
            public       resume    false    203            P           0    0    language_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.language_seq', 56, true);
            public       resume    false    205            Q           0    0    practic_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.practic_seq', 44, true);
            public       resume    false    208            R           0    0    profile_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.profile_seq', 24, true);
            public       resume    false    211            S           0    0 	   skill_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.skill_seq', 207, true);
            public       resume    false    214            3   �  x��[]�$�|�=E. [�H��B�� /ԟ� ����GJ|3��V�<�bm�z�Ū���ǿ~��/�����������_��������F��~>��?�aNQj��I��&g<�k���Q[��#�����?��
J�$��˔�q�ѩ�g�LRU-ď�_A�G��Z�u�Q��o`�M]�,�w���^>����X���r�q��՜�Y��AM$}�
K����k%�xn[���^���(�9e��Tzȝt�=�1�IZ����Xn.��FV�S�G௰2��}W�3��s��F��f'��lj�*}�
J�ƻ*�}֮.y?�܎�(Q\(�U�{��#�WXa��+2�s����;�9���ܘ�S�5��_A�НS�Z��s�+�ͽ�#R��"$�A??��Iy��[�xvJ�qk�J��Fe�<�L)|~V`�k,3#[g�c&B�扭�>��j퀟a��I�n����jټu�D�J�꘩~���醙:�jq#J@�.���<$�٪��v�ϰ�Ae;���L �C3�nU�,g6��]��6a�G��a��px���yj��.��ʚQ"����V^a�g�� S̻q�p�3T��+s�&K��L!�/3Pm/�"�4+Dι�iA<V=Z���a�G���zg��T���	�����~JH��t�ԧ�n�{�8QڜLó'�+�(��-����?����)C8����(?E
NtS�TTù�������:�SsPu�����
��ƹY��9i�����|��2�%{�4��F(NA�sk����B"���q!pH���}L��H癵~��[r��@�d�Ps�`H����߲o�j���D�_�^�^a�h��FAJp�S����y.�����/=�ω�&��K�Nh�>p��}�<��EҘ�_z��)1@�f�Ak�<����q�a<U%���a���t�+��&�DO�N�N�T�����GE�j��h�q�N�&$J�^��t9�;࣢7�Ӭ XJ)��n�*G֘��&�}>*�;u��n7�����El<�Z-Ƒs9w�;ࣦ߷~B�4�B��.�>��T�
Wsn�w��)��b�H���&N���]�K�|^Pw�GE�w�KjK�Fn�;��.���I��4=��+�U�U����6,�/�>��.�7�?��m�5���2���z�p©O���@���q|��q;,��m·4�+����p=�D]�7����FK�{�F�q��t�?U�)v���Fb�������r�����"Dgn��?Z�0ࣦ�AD�'?�`��&6F���{�T�y���sG��{�J�X.:�u^2��4U��v�8� 5����4�!MQj|g�ή�ZZ�K���� ��>���4�j�b�-����t�WB��_�������GR`���Qk�}��]^�,�����K��R�`Ӝ��En\�?��}�JI����k��K����ެ�1����1\����T�Nu|P�w*E�蔋�؄7��:3��}�U.��4��BjZ{�м�Ε �,e5�pƃ�1P����[�m���d%:��d��e'�{���1?�{Gw>m]���ǔ�j���F�p�>�~�N���ԥ����� �,��i���{��Q���.�f���ī]YfN�E�>�_d��G=�d�(7� צfNT��ll�E�l�������T�	�XV�P���wO��-˹~���緷Q�s�9����R[qJ0�1�*~Oͣ��j�\�q�p$;c(��y��sH���d|T��z+�$��n�J[,B0|i��ǒ�lv������FP%�-�.�����Jn٩��4̞��6j��͈1[3��u��@I�.�/NTHtncw����-�O��� Z
�+Z[t	�h�d8Wu�+,��}i�$n�N@o��jE�䢙b��!쀟a�{��ti2�Ep�%P�sk�}�4Ϲq��)K��D���I�$e�\gh��2Z���˔���+|p�`k����\�����L�<�v�/S��Y���3��/w��^x�k��%_���_�l_� f$�糖(Ѱ�3��YJ>�$�T�~ǔ� I����f�cj�����pƑ�����b��摍ͧ���"�R�ٺC�b�8�����dYg�Ew܊����'_R�������d�S�e�h<x�#�	Vt��J;�Z;��!�S�ZC��\�^��\!���&4p�\=쀏���L�F�7��>O�j%�ZWn;�%���,2��g]f`6F�	�e.�GP�/��w�GCv��yبak��T��@H_�*�ߏ��k�T�i8�Fk4�#���iާ�����h���YYF��\���y)���B����ǡ�%��w�K�,W)6��f���R���>�M�)~ɒb�Q#N8���H���E ɹ�Mپ���$$�9�ɚM���6��b�v��M��]�AF�� �\�Q�j5�sm�~���ܺ,���M^�K���/��H�9;�l��OFĚ�E��~M�$h���8h��Ϲ>�-ٝ��8����A� ^�]���T�K�w��f��3=��)����R������Dh����~��ɰn��UthMQ�5g��;����6�K���i.E�p���su��*��r��<W�;��4���,2`����s$�����-�k{������یU��L�?]X��K8��`�4J���lv�/��oɂQ	x��Y{��֠��v�����~ٌ;soF-[hs����k��PpN��}М/�z�2�N1�a�h�K��Y�vbX���/����3nX2fI<��
o�� ����4��$ov1�>��;M��r�ڶ��l,c���}�%W:/;�ɸqӬUr����\�X��*]�ة�&�d^�m��&�Fg����*��\b��I��Ri���7R�Ÿ1�u����o𞲦�����:��~ޱ�-���"ۺ�^�_P�ɲ���7P���h2��A��|��#:�i�!T�@�	O��;?�;�c����9�5�习T۪�~]�$�aF����Ÿa��/�)vWP�L��(A#�t�v;��Ÿ�s�RJ@�ֺ����@��q��.F�w��q�ۢ����="o+l�ym�ǙԄ$����ƭ��k�e�0/I!��D�¨-��]|�>X�7�5@���q����4�،'�~ō>v}�pc�b8�����;��pM2a�Jz΍;�c�g���T��3�G���.���/��~~��wʢS4�>C��<6MA&�Zen�������)J?�7��5;��쀂ފ�2N�.>w�?�J�|u�O6� �p���SS�FB����+����۷��J�1      5   E  x���;n�@Dk����%w��� �]�I�F��&@��a �'�M*A�� �f(1	���zx�=���v;�|�?�6z��u;}��uJ�(�h�e[4[�$�t�Ð����w�D<�j�ճ��꼫��w�Z�ʥ�	�]��mq�ő[wq"6R�(Iv��I�%c%����D\27���ו�:�x���/��Ѵ�V̐��;6�����2���:��|5��?�y���]$��R��vE�3�.�@��v݇����!�q�uJ䴔hd��R����
��9Z	q`3�>������o���j*$���i�Ċ�L      7   �  x��͊�0E��S�J���u�Ua6���&�"�q'��W!op|�
�d���>]]+�^N��~�>��zk~��R������xr�<�<�4����ݖK����a|�_���/��ܼ��T>^޽�+��|���y}��������-�ͯ>��O�.t@=����d�eXΦ�
�ٴ�aM���e;Y}6�U��{}vD}wW_NV߇=����e7Y=�������C$.�U߅�|.�/�����׵�ǟ���
��3���t�2�y�5����I�S&P$�WJ7F"r>��wm���>&�d�R�>��2���i�Y<q�U�*t������^R�|/9/#|���[k.�|KR��y���k�|��1�[�MI�b-H�����s����Ɯo�}J��>%}k�I_Ӈ���e}�}je}��(�K�Y���������쇬/�>d}��`�/�L�%�Y��y��m�D�!=����QηH�&�R��D�"-J��>�VҷƟ���OIߚ����T��Fڔ�%ޡ��<ѣ���~�����3ʷ*�gv$׃���y0ї�֌��a�/u�|�����5����q���i�oqv���U�ί��%}��;�U���yF��o������ʳ;ҪI_���
��4_Z�����a�o����-���o�6M��Sʔ�uH�ڽ���Q&�|�~zBߚ{��-}zn�"�:)ߪ��ڱ�X�Ԏ�,a�,���b��|�l�      9   j
  x���ێ���k�)�χKۋ�A c�HnrÑe1ѐd;������>Q���Ԑ}b}���E]��~}���/���l\ͧ��~zږ�g�i]ͯ�vZ�粓�?��W9�������p^\�P4��e��J�+|zY�p�����7)̮�~��p��r��+��u���~[�eݸ���Pݺ�?����p?].뭬;W�.��Fu/���PtŇ�3Z^���M�'9�6�3�,�r�
z��.����3Z�4�����T�
�Ϯ���R6�+���ĩ���~�^���|���P����J;������V6ϲ-��J���p=-�
5hP[c6Em��ݞ���y�V��+���c9ٹ�6����o���vؾ����x*ۡ��_�����\��8��$���V��;����Vv��h�y����b�]�k\��Үu�t	u���ຈB�
��P����v�G)%멛�*�n��|_I�?������u������	��)����]���|+�NJ���V��s���]nU^W7[��Q�5�OR����R��PI�?#�kN[�����C#�6QC+%���R�F�^*0L�kN�> �(U��'���f)ٜ��iFנ�9C5�R�gw��wh����5n�?�R��'9��3N�(M����\��dL�Fj�t��:iS'%���ㇾ�k��n�����t=|����(��:�&����z�=�+^�͞]��x�͍Tp�̭�4wR-�{)k��]d��̣�҇z���kq�������r�������d%uQ�.\�����F�~��E�G�����ɪ����ʵ������&D�j�r��j��_��qs�����yuϼ��{��6���=M5�-qWNG�v��Ur(j��\!�
�[9.�z�j�\ٺ�fϕl��nY��sG^ߍ���]j���"P?�0k��'��#&�6P:�1�?7B��� �+1�($��4�"}�E�h*��t ɴf�ٜ�t�K[g�2�NĴ[? S����
/$ ��'��IZ!w�	�F8�41��C��K	2�E���v,$F�H�6Ō6�Q'8j+`b��bbYW� ��h�'��""��1�ᦄa!���vt0!����n?֓z�>T�K
}� �I� �+�b 0�L C@%��8ڲ���Hc4���#Fmp	#�Y��P�``�����@��E��F��G���נ"�D���.4%1H�@E(��0�:r�01�UD�7z��I��A3��"zB�}�$\TMG��I$0$�f\5���}�0�� �{��i������'(t����|����0851�$Ƅ�CO85�删Mi��"��#
��(�䩠kJfM�!�.)�t���@!Oߵ���E,J�f��	lU0q�
jg�<R��t��r@��(�A����
���ۼ|b�]����lY@�x,�8�| .��}&�����)eB�sg7�rqr(��W��O��^��:p�-����S�]�R�DP�
�3'��=���]��-�F�`U�!I����()d�cF��4�>u���_�I�G�tj��g���F�g0��J�4�(�qyD.}���Ů�;XR�0[)<c�jR�l���*����ya{���u��[�z�L�EjB?[.H���@�LH��	/�@0�$��r�I`� a�"A	5����:���?� ���jV���E�O��7F*ؕ@�k5ЇI���-Y�hH��b`/NB�^�e�?��O�?�6�@�CݳH��%2�=�*oB��d��3��%���o�����Q�C8fA���~���?�E�5$�5��A�۵M�S� ��g�mg��:ˀ��x���8���N���Ex� �y��	֤۠��i�QqH�}�@ Y���PBɟ��g-����Y�3��������|���{�b�֋x��	t�m	��)�·"gk�ƥ⤎�F*�c�H�q3��Y��gv�~fOusHs5��d)Z��
�R����{R�ts�E�@�<Kj3Afr�o9�;��-d�S,w8�>U�����f�ڌ-�u�\
6{�4������&�沇��� �j6��S��i�ə5cP�d�j	�^az��1���lW�%sK���%eL��X5e,z��Y��gsY�����؁m!^7ۼ�jfRG���%���V������S��"g��I77Þ\��m ͏�rf��,�"E��A3��c��A1}N�d�����4�>޽�=�[!�K^*�|�G$�5V��f��ݷd'ű,=m���دLz�?���LK����{P͞h�q��l'(�f	f!�?���Aͧ����}��(�X^-�h󲍶%�2����K!,n�'���ߣ.��}�k�uة􉟨�]�}|�s����<�>�=ھ�1�t��v~S��m�y��pPv���c���eh�N�H��t�0�K��C�xo�e+��{��>��ѷ==C��
֏{����^ �em�z>�O{~YQ���Mw3�h���&�ހ_h.��E��©��c�K�j*��>���G�7��<�g��V�f|�/y	�~���	�=>����`^�M�ѭI�&�t�oM�>�GH�tk��5��#�O?��]G(�Ϫj���͢���i"�M�h�a�sBC;3f_�ࡇ���r���/eY��w�g      ;     x��YK��6>�?�z{H�E��h
�R pw����]8����P�h(�y���h�����������r�����e�>�g~��᷇�oON�����oޟ|,�t��|1���r��<]ίK.��G�#�/�
Џ�ޝ��p~��|}\����철6������r���&�������e�}b�m�����u�_}�y���3�����u���o�������_�W�O��P�&3��k�X|_6n��:35l��:?>gf��/!�T!򻲀^������ �)�֓��fcm�����-j�U��s*,�u���|���'�\>_�����l'�[�/ޏB�{��dZb�ڭq�:��g�����!n�X�>x q}��q�Zz'�.8�鬝�a� 8�d\��-a�x�w ȯ�,���}��g�a{��_t\m�2�!��k��~� �#�2���W���UT^��Lپĥq��&� ȼaZ����c#L:S?i��E�8#��@T�A.�'c3	��+Q��}'�b����DB�3Hj��H��nȓ�s�h$�}8���T�೙�o� ���Y�UI1H�*�!r�KbDP���U�"$/c��,�Ȩ�p��2�������W��,''�t�o��"��⸁r1�!���I��5��@F�Nfθ��CN�(���i%D�M M��T8K(ٛ}P}�!���*�5� Z�DC���lp-j�Vp�؎�hI'��^Y
PҌH�}(�I����l;�i�|��on�I���)�
q"�{w3de�*r�ks���Sf=����n�:�t���&��f���.��4�؃�w�����^���D�����:�7��xcGY��h�X%��6lⰝ�>FgN`�'�}P����V���q�� X��P+W'��+b�ӊ$"|P�����*���
#,�""�r����b��.L5?�|$R;o���	�Fq�J
�cyVX��ݷ��Ғ�au�7+�` i ݀'��Q��s+B�kX��N��/k��������j�Ͼ(��Yq`Y��5�G��4#,�C��G�J��R���Y��`gUM9�
��>������$K�� �3�ͷk�Tئ)���x��4�R�/ �P��գ�V�0�jz_OAPxN�� ?h�(
@c�z��!�Z#�������B�2���lP��Y�Z<eQK�+���i�"�ggE��v֬�*3d3���m+8�օ��b~���;�H*�4-8��*!e���6��UGZ�I�31vl�x��{0���y�;�����r�>l���4&\o�Z�-�	�2*���Ž�8������QN�$h�j�з�Iۇ�/�<��&FW��m�b��n�,��Wy@�V9sր]9���uw]��&��]��_w\�ܹ�2�$�c~^��
�
�FZ[��-����V;��wg�zGI��{g�E��&�@ɳ�``�����������3U>,�b�\cr>��M��e..�u��z�A[��l�N|;S�C����t�s�      =      x������ � �      >   �  x��Io�H���_ѷ\��I-���@Ɑ 22s0`Pm1�IB�l��[)��R�xQT�fX�c������J(q�>�����&�T��"�ĩ�8J��_ǁ��PΑ��̞���y�0�{��<�䍥Es�&~�Oa0��h����\����0L�d�F����L��h�&ޡ��O�<t��G�-����~��F��)��S7q�n�����q���t��\F���9�kD��7Id�������L�.N��$��:9��v��������rx;�v}�z N����r|<	N����3�����/�x�gj�-<F^0��w����X���rX�|�c.j小�J��?M�gI���-&a�s�>O32��C.�X�{yq(�GëC�}F�"��P~��o:�Gߕ�_Z���������+:��Z�^&nq-G_t)��ؙ4�-�#z��ji��i�PY�D��p���
e
��p�,���e���uZ_��P���	��3��j�`�2��OU|���p�P��ԉ����6_�1�P��ԉ�rq-+AL��3�l4(��%j�\����e�ܻ�I��>rM�8�\䚕 i��dQ���u��wӪw_n#;�9��\ ��|���b�nY�3r�Z��Y�^�豔0�+�[�5�=�0M�75�X�8�W�t����:q��8��� iB%�z|�?�
���QW�*G����Xd�o$�W�&�}
j�o�Ц"G|o(G]k�Ɖ22��W�E�mjc
�[˧.UV�e!�ԊD���-� 6��M`a.̯@�D����u����LG*M���
�")2��w���ɿx�
��{��
��Nr�@o|]]"��ϝ+@pȍM`��G�`8�0�H2Y0�U@6P��7xO��m1�ӣ���(�8~����,��m�9������v.�{+���J����X�,-Y�������别M|㺻�t��	t��QpP{���'ikN�|UZ/:~Igݓ�a��/IG���#�m�#���*R�Hʲ�����\��&�����L��^i��d����'�7D��f���-�/��\SQ��r[Z�x!���B��!|�NH'v�&d� ��f�"��r�e�H]>�F���h!<��d-��Eܢ��f��,#v�q6ộ�T��w3��;
�O�E2��4�}l+��������B��6p�(1j�nś��33��.� �㈷�8����q�6mq�E�2 ���p���`8���<15K; SzK(�a�����2�F8ST����5:��H�UMnq�]5a��K���k���'����
���'��8���8'��~��&6zY�& ί��7��v�5b�SvN�p��Ɓ�հ�N����Vz:k��Y�rjg��3��kDK��ީ�p.���
F���c�}�7ÄQ:�"�(��+�/R���0��zI�����NvX���ow���vߨ�3W��Ι�oM��-�-'@�U&�A��Z���k�FF liG�r���e3��,��o�U���|��ma�5 ���J`�.��i��aP�%������9V���gZ�0�ıf��TN�:���pR*��wR��V���tޮ�V��a[i���߮�R����SӞ8`�@}��!�"�ľ��RT��.J���� �~!���������      @   �  x��[K��6>S���vkc�Ч�=��N���<6�\@�9���MM~�6(Q"%(Q�Vv&��M �$��C����*H�w����pE��� !��ɀ!��L���oKe�k]�ޏw�2x�eж�{�W�n��j���P�+h�Uݚ�ԕ��}���c���Q�T��oZh�{�-G-S��J�C�ժ0Z�;�O���o}Ue~m_���oLu��]��e�����&��ޓ2���#;�<�8��Nb�TF�&2	�h)���4�"�~���5Җ��o�z_��|�A�(��߾��~�j������_]��gu����΄�z6��\��ܼz���~��u^P��!	c����>��	Lx�e׭ڧO��JCZ�w�'3��gz�| y}_@�=+��l.߀����7�"�x<� �@�<Ԛ�,R� ���$�c�	�y�9 >G� �`��[�Z}�Aw�8�vJ��kh�?ZD^
M�2�: M�vP����������~$%y1.�g�=u#C�^��ά��"�Up�"G9`ǌ;F��$!D�!�3�2���i��>�u�(Ƅ��A�s�.K�S��Z�g�O�tZz�죻F���y�P����;�	�-Y�LЂ$G�.���?��g�"�̓, ���0��PIA�A����4�}
+r�sPG�?΢rKm<	��j
E�U�!</l��yӠ���@ۑl�@�T�X��Z[�yH	� 'R*��Y�$�<c�p ���3�@U8�����/�m_(n�󳺨�k+Q*t�������Z|�Ju��ixeҾ�Q�T��evV����@��u�A{�*������S���SW���*�
��}�5F\^8r��(
����;��ˇ�J�P^_�:�9#�ê�Ƒ�����.�^���2����^l�h�$	Ğ�q�(9T{�F,�t&9������Ä�A�?a�
��vq#6b��خ���@���������J/KUUޗC�{>�7ِ �-�����P�C�Oj��)��B+�RӰ�9���:T�2�s�.ˊC�(r8<���CWS������ˡ��j�1x1��(�(�$cG�gz�n�=�º�{Y��~k�Ua%����'@�!s��q�	τ LE3R�hi���J(��>Gm��U�/�ƿ����T
�2��/�κ���wQ�_(��pB��k�/q�E��Mgڙ�������~���MQ؏f�Π����"�q$��J�e}���ܣ�FL�^m�籍$�$�G"%��8T|�97�i��,�9�̆��$L�$�E��B����s�>]ν�4���T3���]�x�����<b�a"�����?6JX6p���g̈́�>��ߡMNS�$�)G�RJ$���yL3Ι�+>G���NPtUV�k'{�ET�BW�`6但
c��r��a��1\<�d8�k8W�XjGYn3��$Z�De	eA��8L]��j�-㝀�������;�>�R$�����޴�����1АP���6N�������,�X���HЌ�$����X��ׂ?Gm��7��Y�m2^�z:_��]�t�+~���i���)v���%�vȏS�;�s�nvl��4�
@r` ��s��:$�7�.�Av]�$�:�q,C�]��ڿ��1ՂєD
�X4R1��S"��UqW�|����M9e�쳕��_�Ū�0\� �~������ʊ�<�����c���+ ��{�3S_���ŖS�u�:	쾥����=����-��Mkt���&��c�+�*��S�0�b��"h;ɒ4`����r�Q��c�Uc�Y������e���S�m�9���֖4�e]CEQ]��G��9WNehs)Gz�86�3��r�SU�UCZ�
[޻m���W��\2!����#��a��/�H�,�pN	�*U��T�r�s�.���N����UN�)���@GZ��1HY���f�����H�]I��Q2S9�-.!�sb�16 *	������"� 4�X;�?G����qg��	�4w�N'��Wv��n\M
�B���g<3�0D�P����\1�?���,Ү3�M|P���)1v����7�#����Q�Of�J�Hvc�/��Iap�v�A{>�����.$�F�%�w�$x;\{����"Fcx-Äq1Ux[i�D C "J4,0��I�R&�t������`9�K`fF\�0��H��vk鮮�e�0�� Ol����DL(�����<�]s͂4GPd��i$��T�\1%�R�\ţs�>=q�Q<A�ӂD:-8#Ա�=�x�͖C��6��Z����{��ِ*ܟ�L8c��c忧K��e!&�IjΚH�H%��)�kW���v�����mW_�Ͳ��W�]�qA��|u5-�N��F����/
Unw϶�z���5^���n����O��S���#1�n�Kn���H��:V�������a�B&3�_=��k��XΕ���!�Z&h��1a,I�����ĈS� p����ڽ9 �$��
�ݷ���8N�gr��[t�Y]][��4��氙j��]53�����G֎>��THX���,�LJ�$y��P�=2&cp���Q��eg���u�n����C\?W�����c���`��l�5?�U��V�I��J���`�;O�dB����.0�o�^5Aw��z74��C�)H I��%�v�?��||P��kE:���D���3@1��刖<�2�)s(;Gm�뷪�J�C�v�q�ӕ_��9q5���T�������jWh���nk����B:��vP��� 7��je���M�t���er�O��e����Ϯq�'b��yhy�uC`���zalx_�����/�Ȑ�3Sy�\P1f����%1�s2��?���=�s�F.?=A����l�gݛ�U�y]�?�;��Ⱦ����B7�-p�*SH���V]߬l y�uk#G?��p(cQ��=�W�&�jZ�M�
 $wW7c�z	��8v�R;r� ��d<f���b����      A      x������ � �      C   �  x���Ks�8 �3�+|_�o�L\�$SJ��a/��q\�X^?R����)���l"�IUH�!є�F���hy~r�<Y]U�˯�������#�{�q���o���������g3���\}�~���h�b��.����������������/��O�����L�������������/�G듏���G��G�f��������������������/��������������ӏ������>������z���b}|�<;x���|���z�����|�b�z�>9[��u�L�e�y��zu|vzq�:�{}yp����������bu9�xċ?����9��|�qf½���.���/����o'����Y��������շ��՗�����|��i��7��g.��.V�ϧ_πU���3 �V7��o���������r��t5�n~����׋w��@���M��C:w
�W
��g��>`qc�i��ã��q��m�y8�!���<�e.p/�x\�3m�<㪒�ϕƽݶ�7��dq�?P�G�;��t���t�]@���ǽD���D|���T<B���W�ƍc" �@��+��t" Y�:p/����HQ�x�Ľ�H�G�]4�@���+i�n\�:��^"
���(^��;F	��z�(����c����Q�܈2���T[Y♘)�ۻO�f���4��zр��g`��Pǩv"l��2���t�V�p���ʹ��D+h��Q�.X�T�,mq[+X����2w�/� ���p�F\�����e����Q~k>^F��v0c��2�l�1�{v��vcf��A����4��Y�#S=�~G����[�md�?n7md�?W�����t����b{m�������t��a��������g�	�!�p;���o�)L�6����ś�z�3g��n��[�����	0�'����u��L4܍0��P9 S��:�m���3~/=`�o�B����J��C�c��C�k��A�s��@vo7���� ������L�`\70̓";���%人�� �:���$���y �^��./`�N/`^�n/`B�:���"���K!��L����!�����@w�SD�v��1�LL?&�"��Q1�L�1�Lr�x��z=y�L1�C$&�5�������`�d" �5B? LaH2 �B®���r	`��� 0�2) L�L <�'��tS���i�~�a���G=���+��<r�`&
��0�y�1'2��J���sSN�F��`R��)`���9R2&�prVdL0���0��0�T���	&Ü�� Sb�"1qOT3 �c�O� Sb��i�q����؀y8�%p�99�ep�99O�, sqNfr��5oU.p6|7��j]���+�o��c��y�O<f�<[r�̟��.���v�D3~N�e0�磞xL�y�f�<��6�o���E�1q�,��Aݘ8ѴC$&N��TL���G��a�R��3~/&���ji�7E5���8SOc��V�o�-RSc�離jL���ڗ����}�z_��I��#
��\�U��o&�ۊ�Z��ב'*OY�*­����ڲ.g۲�?~[ֵ�Ly��i[%��0�'�0�og��s�-�Rr��-��v�-�r��e]��t24Q�6d�iKm#%pw[�mYW��mY�{�f_���4�ȱ-�ܳU{ET�u��2&R����z��x4�,�+gU�O��ˋͲ"/	�$$�U�$���u��;O��Pw���Q� ��Ǆ�Lvσ'��$�P8c��-l���Ġ���1/Fyy2P��<���A?qc�i���
��Q+�Ȑ������n�aH��ܝ�x�A^`� �<��Σ��a,�wڣ^� 5x�t`�8� 	����@�npF�i��y�np�e7�H��H���h��M�b��!b�QbC����Gņ���2� �5�%ԭ���n��A�=�(kpi����j9���"_�]�b�]���Re삎�����1q�`��q�x��e�D�0B	
F(IÈ�r���}�#:1	5���4�p���f�	�����"M$��	��DBg�����O$\�D°D� E$O	#bD��(� Q5�4�0����H�D�2�HXH	�cD�5~J���~��)A�6_����Vm�Q�R�ъ!���d��;�Ю���]��N�͛�X���x� �;�U��K�s�[��aI�<�tu�A�G4 ^k�Wm`T���I�Ā�#�C(�!)��P
���(E��0U4§A+�M��bk�"�&�_��Ѣ�`�1Ȏ\�@�]�FM��؊���.%Ejw����Rd�ۆO�F|׈�*��*QIU�#��T�o}��%��%���>͵�x����!3"�fDËn���:�Xʋ���n����v#:�	�"��FQ��4	R��QKP�~������$c"��K'}�G!�,����5�J�M�3����o�p�l$�i`}��!eQ4�XQ�Ó5��E�=H��iT�ͫ�W)��T�Z���RDR�HJ��*%؍�o��d'K�K��&����B[�4�#�T�.Dp!�r!6�B\ą8s!l�1']��Bd�.Dp!�r!&�Bl̅��i�F�! %C(1�!�I<��d�5�F-3���D�������uvK;�a��!E�@#r�B��":G�w!����0*ћ~�ā�Ȉc	֢;'�^]��.�s2�d�1`�KO29��w�g�@ .=��d1$"ak�HA�9^��bՈ�F�FlF���Q,�F��HO�@�1^��bՈ�F4�FLF�بqQ5,GrJ�C1v�RՈ�F�FtF����q5��j$�
r���� ,J�I�&| ԈʨU#&�FlF�8R�o1z�"sφ����&2#LTT��-aҝ�!���AN�0�w��(1&������,"=��Q΢��q�����݄�/��ĕ�P6(d�4��#�o"��Dƽ��xMx�&Yo�8ub�T't��x�ܴ��( i�<JQĮ(� �2�<�Ȑ<�ٞ�p
D2$�L�l�Ho2B����-_r���nI��� �AF�!��M�[�1Did��fʐ�N#id\�KO�l���#���{�D!H;Ә�|&D#�)5��lMj2�$0��tԤ=�F���wB�ph�^���)����Z5�E^�j���P��n,��l�⌜�$��qD�O2mɐ:��#I��2���1[�l��b3x�%�NP+�L�Px'�$ޑ���xG����K�7��R^�6�&�J8�wD��(�Qq���)SLo���2��2���Ft%��/���2@�3���J4eR~:�2�B)�|'-�tǞ0�t��tdOG�tdOG
�n�)�H��<ݩJ�������L4�ɔ��<�Pi?��`���<�fi/��@�L4�ɔ���!̓�0�)qEZZ�%t�k�s��J��-�ȍ�؏��5?�5M��tV��3���6��g��MA�xK�l���-l��iָ���D
XgK���O����e���BK�D>�?�z<�-�S�;���d�锱Z�w�����yB+�D�j~��s��i"��I��{�ݘ#gaQ���i�!�����6|T��9�߮є��%�gl�j4�ߴ`����ㅆ(Th4k��Ԍ"��I�� R�ؘШ-KRh0z1o3x�6c�`NN�Hr1�YLF�F�8���{6���`�      D   \   x�3��I�K/MLO-�2�tq��2�OM�2��J,K�2��tq�2�t�2I(���sYp:�f�(W���rYr:�䗦p��qqq �      