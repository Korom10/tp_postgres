PGDMP                         z            Gestion_projet    9.6.0    14.1     n           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            o           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            p           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            q           1262    24585    Gestion_projet    DATABASE     l   CREATE DATABASE "Gestion_projet" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';
     DROP DATABASE "Gestion_projet";
                postgres    false            �            1259    24610    commune    TABLE     �   CREATE TABLE public.commune (
    id_commune integer NOT NULL,
    nom_commune text,
    population integer,
    id_ville integer
);
    DROP TABLE public.commune;
       public            postgres    false            �            1259    24594 
   entreprise    TABLE     `   CREATE TABLE public.entreprise (
    id_entreprise integer NOT NULL,
    nom_entreprise text
);
    DROP TABLE public.entreprise;
       public            postgres    false            �            1259    24623    projet    TABLE     �   CREATE TABLE public.projet (
    id_projet integer NOT NULL,
    intitule_projet text,
    montant money,
    datedebut date,
    datefin date,
    id_commune integer,
    idsecteur integer,
    id_entreprise integer
);
    DROP TABLE public.projet;
       public            postgres    false            �            1259    24586    secteur    TABLE     V   CREATE TABLE public.secteur (
    idsecteur integer NOT NULL,
    nom_secteur text
);
    DROP TABLE public.secteur;
       public            postgres    false            �            1259    24602    ville    TABLE     Q   CREATE TABLE public.ville (
    id_ville integer NOT NULL,
    nom_ville text
);
    DROP TABLE public.ville;
       public            postgres    false            j          0    24610    commune 
   TABLE DATA           P   COPY public.commune (id_commune, nom_commune, population, id_ville) FROM stdin;
    public          postgres    false    188   W       h          0    24594 
   entreprise 
   TABLE DATA           C   COPY public.entreprise (id_entreprise, nom_entreprise) FROM stdin;
    public          postgres    false    186   	       k          0    24623    projet 
   TABLE DATA              COPY public.projet (id_projet, intitule_projet, montant, datedebut, datefin, id_commune, idsecteur, id_entreprise) FROM stdin;
    public          postgres    false    189   �       g          0    24586    secteur 
   TABLE DATA           9   COPY public.secteur (idsecteur, nom_secteur) FROM stdin;
    public          postgres    false    185   E       i          0    24602    ville 
   TABLE DATA           4   COPY public.ville (id_ville, nom_ville) FROM stdin;
    public          postgres    false    187          �           2606    24617    commune commune_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.commune
    ADD CONSTRAINT commune_pkey PRIMARY KEY (id_commune);
 >   ALTER TABLE ONLY public.commune DROP CONSTRAINT commune_pkey;
       public            postgres    false    188            �           2606    24601    entreprise entreprise_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.entreprise
    ADD CONSTRAINT entreprise_pkey PRIMARY KEY (id_entreprise);
 D   ALTER TABLE ONLY public.entreprise DROP CONSTRAINT entreprise_pkey;
       public            postgres    false    186            �           2606    24630    projet projet_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.projet
    ADD CONSTRAINT projet_pkey PRIMARY KEY (id_projet);
 <   ALTER TABLE ONLY public.projet DROP CONSTRAINT projet_pkey;
       public            postgres    false    189            �           2606    24593    secteur secteur_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.secteur
    ADD CONSTRAINT secteur_pkey PRIMARY KEY (idsecteur);
 >   ALTER TABLE ONLY public.secteur DROP CONSTRAINT secteur_pkey;
       public            postgres    false    185            �           2606    24609    ville ville_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.ville
    ADD CONSTRAINT ville_pkey PRIMARY KEY (id_ville);
 :   ALTER TABLE ONLY public.ville DROP CONSTRAINT ville_pkey;
       public            postgres    false    187            �           2606    24618    commune composer    FK CONSTRAINT     v   ALTER TABLE ONLY public.commune
    ADD CONSTRAINT composer FOREIGN KEY (id_ville) REFERENCES public.ville(id_ville);
 :   ALTER TABLE ONLY public.commune DROP CONSTRAINT composer;
       public          postgres    false    188    187    2025            �           2606    24631    projet lancer    FK CONSTRAINT     y   ALTER TABLE ONLY public.projet
    ADD CONSTRAINT lancer FOREIGN KEY (id_commune) REFERENCES public.commune(id_commune);
 7   ALTER TABLE ONLY public.projet DROP CONSTRAINT lancer;
       public          postgres    false    189    2027    188            �           2606    24636    projet lier    FK CONSTRAINT     u   ALTER TABLE ONLY public.projet
    ADD CONSTRAINT lier FOREIGN KEY (idsecteur) REFERENCES public.secteur(idsecteur);
 5   ALTER TABLE ONLY public.projet DROP CONSTRAINT lier;
       public          postgres    false    185    189    2021            �           2606    24641    projet realiser    FK CONSTRAINT     �   ALTER TABLE ONLY public.projet
    ADD CONSTRAINT realiser FOREIGN KEY (id_entreprise) REFERENCES public.entreprise(id_entreprise);
 9   ALTER TABLE ONLY public.projet DROP CONSTRAINT realiser;
       public          postgres    false    186    189    2023            j   �   x��=
�@���S���d7�V�Q� be3�Au��D��l<�7�W?�%�ᚤ�l	M�����,��'�,��
�J4�"�)�����V��ǖg��9
�W�Ta���b�Ib�`�CE��f�;sj%K��j4c��8�����j�o�Fx����D��,-�      h   �   x�=NK
�0]Ϝ"'(ֿK��ZD�t� �$d���7u����k����|T����/���Ѽ)娞Ϊ����c�p��ŏ������t�<)͒JCr����@2��%��@<����3[��3�A��$�
O0/��b������7m{�W��?l�9�      k   �  x��S�� �����@�����`i�A�����*\J*�.�������2��x�Q/�0f�8��猠�y�z:��ۜZ�w|�����C#o׮��5���G�Z�C-jؖ=�D�J�����`�	�G�l`	��X��'�a�!%�| 3q�k�mr���+�q�s�~�5��D+��:��<y��x���8�F�����'�;(D8>�ǔ#��]Z�&�����φ��r�����7��	��۵�OH�����]#JT��B@��]����fi��5�"Z�긻b����Pńg�N�D���<�?�	�׷����J>l�đ��ă�{�=?��tA�N3�)��&tf���n2i����'\=
�a�1j�rl٬4��n�ŷGՋ��r&2-%܊����~�8��`"�Q���ѓ�i4��$�&i$�Μ~��ϙ�l��K��#e/���E�1��n�};֭�a�H4�Y�n:�w�X,��D"NϘ`�6����
��u2�lFS�]ύ_����l\*Vx�^ٰ�y:�TE�Y[�YO�+?J��L�z�d��Ӯ$����63��!��vU�yF��poyى�J����5��ϗa�v#n��F�ʴlu�
Ү���{UU� �
�M      g   �   x�E��n�0Fg�)��[����閡-
k�0X�� Gy�6���O�C�Ωh,te+;�oZZA�Ж�l�hW����Ɛ�����ND� �����@h�EH���i���o�¡6Q9��4�>��UD�
�O�L�~��Yt�G����� R�����p��mc0�5���a1)Ӻ��/ZJ�;�      i   �   x��=�@�z�S�	��oihlLb3���L����x.&��%t��ߢXQƾlb��.�q_6�7�z�[z��_�����Sνv�������lFR���s6�P�_�XGs�چ�kcH�����W�\ ���.�     