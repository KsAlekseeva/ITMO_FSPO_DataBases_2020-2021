PGDMP                         y            postgres    10.15    13.2 %                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    12938    postgres    DATABASE     e   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE postgres;
                postgres    false            $           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    2851                        2615    16393    pr3    SCHEMA        CREATE SCHEMA pr3;
    DROP SCHEMA pr3;
                postgres    false                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            %           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    1            �            1259    16553    calculation_materials    TABLE     �   CREATE TABLE pr3.calculation_materials (
    order_fio "char",
    order_size integer,
    material_id integer,
    order_quantity integer,
    calculation_materials_cost integer,
    calculation_materials_quantity integer
);
 &   DROP TABLE pr3.calculation_materials;
       pr3            postgres    false    6            �            1259    16570    calculation_power    TABLE     o   CREATE TABLE pr3.calculation_power (
    order_id integer,
    performers_id integer,
    conditions "char"
);
 "   DROP TABLE pr3.calculation_power;
       pr3            postgres    false    6            �            1259    16502    deliver    TABLE     �   CREATE TABLE pr3.deliver (
    deliver_id integer NOT NULL,
    deliner_info "char",
    deliver_cost integer,
    deliver_way "char"
);
    DROP TABLE pr3.deliver;
       pr3            postgres    false    6            �            1259    16517    material    TABLE     �   CREATE TABLE pr3.material (
    material_id integer NOT NULL,
    material_view "char",
    material_specifications "char",
    material_quantity integer,
    ordering_materials_id integer NOT NULL
);
    DROP TABLE pr3.material;
       pr3            postgres    false    6            �            1259    16532    order    TABLE     �   CREATE TABLE pr3."order" (
    order_id integer NOT NULL,
    order_fio "char" NOT NULL,
    order_size integer NOT NULL,
    order_quantity integer NOT NULL,
    deliver_id integer,
    pattern_id integer,
    deliver_info "char"
);
    DROP TABLE pr3."order";
       pr3            postgres    false    6            �            1259    16512    ordering_materials    TABLE     y   CREATE TABLE pr3.ordering_materials (
    ordering_materials_id integer NOT NULL,
    ordering_materials_cost integer
);
 #   DROP TABLE pr3.ordering_materials;
       pr3            postgres    false    6            �            1259    16497    pattern    TABLE     _   CREATE TABLE pr3.pattern (
    pattern_id integer NOT NULL,
    cost integer,
    date date
);
    DROP TABLE pr3.pattern;
       pr3            postgres    false    6            �            1259    16507 
   performers    TABLE     |   CREATE TABLE pr3.performers (
    performers_id integer NOT NULL,
    performers_fio "char",
    performers_work integer
);
    DROP TABLE pr3.performers;
       pr3            postgres    false    6                      0    16553    calculation_materials 
   TABLE DATA           �   COPY pr3.calculation_materials (order_fio, order_size, material_id, order_quantity, calculation_materials_cost, calculation_materials_quantity) FROM stdin;
    pr3          postgres    false    204    +                 0    16570    calculation_power 
   TABLE DATA           M   COPY pr3.calculation_power (order_id, performers_id, conditions) FROM stdin;
    pr3          postgres    false    205   =+                 0    16502    deliver 
   TABLE DATA           S   COPY pr3.deliver (deliver_id, deliner_info, deliver_cost, deliver_way) FROM stdin;
    pr3          postgres    false    199   Z+                 0    16517    material 
   TABLE DATA           ~   COPY pr3.material (material_id, material_view, material_specifications, material_quantity, ordering_materials_id) FROM stdin;
    pr3          postgres    false    202   �+                 0    16532    order 
   TABLE DATA           u   COPY pr3."order" (order_id, order_fio, order_size, order_quantity, deliver_id, pattern_id, deliver_info) FROM stdin;
    pr3          postgres    false    203   �+                 0    16512    ordering_materials 
   TABLE DATA           Y   COPY pr3.ordering_materials (ordering_materials_id, ordering_materials_cost) FROM stdin;
    pr3          postgres    false    201   �+                 0    16497    pattern 
   TABLE DATA           6   COPY pr3.pattern (pattern_id, cost, date) FROM stdin;
    pr3          postgres    false    198   ,                 0    16507 
   performers 
   TABLE DATA           Q   COPY pr3.performers (performers_id, performers_fio, performers_work) FROM stdin;
    pr3          postgres    false    200   *,       �
           2606    16506    deliver deliver_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY pr3.deliver
    ADD CONSTRAINT deliver_pkey PRIMARY KEY (deliver_id);
 ;   ALTER TABLE ONLY pr3.deliver DROP CONSTRAINT deliver_pkey;
       pr3            postgres    false    199            �
           2606    16557    material material_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY pr3.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (material_id);
 =   ALTER TABLE ONLY pr3.material DROP CONSTRAINT material_pkey;
       pr3            postgres    false    202            �
           2606    16564    order order_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY pr3."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (order_id);
 9   ALTER TABLE ONLY pr3."order" DROP CONSTRAINT order_pkey;
       pr3            postgres    false    203            �
           2606    16516 *   ordering_materials ordering_materials_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY pr3.ordering_materials
    ADD CONSTRAINT ordering_materials_pkey PRIMARY KEY (ordering_materials_id);
 Q   ALTER TABLE ONLY pr3.ordering_materials DROP CONSTRAINT ordering_materials_pkey;
       pr3            postgres    false    201            �
           2606    16501    pattern pattern_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY pr3.pattern
    ADD CONSTRAINT pattern_pkey PRIMARY KEY (pattern_id);
 ;   ALTER TABLE ONLY pr3.pattern DROP CONSTRAINT pattern_pkey;
       pr3            postgres    false    198            �
           2606    16511    performers performers_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY pr3.performers
    ADD CONSTRAINT performers_pkey PRIMARY KEY (performers_id);
 A   ALTER TABLE ONLY pr3.performers DROP CONSTRAINT performers_pkey;
       pr3            postgres    false    200            �
           2606    16558 <   calculation_materials calculation_materials_material_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY pr3.calculation_materials
    ADD CONSTRAINT calculation_materials_material_id_fkey FOREIGN KEY (material_id) REFERENCES pr3.material(material_id) NOT VALID;
 c   ALTER TABLE ONLY pr3.calculation_materials DROP CONSTRAINT calculation_materials_material_id_fkey;
       pr3          postgres    false    2707    204    202            �
           2606    16565 ;   calculation_materials calculation_materials_order_size_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY pr3.calculation_materials
    ADD CONSTRAINT calculation_materials_order_size_fkey FOREIGN KEY (order_size) REFERENCES pr3."order"(order_id) NOT VALID;
 b   ALTER TABLE ONLY pr3.calculation_materials DROP CONSTRAINT calculation_materials_order_size_fkey;
       pr3          postgres    false    2709    204    203            �
           2606    16573 1   calculation_power calculation_power_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY pr3.calculation_power
    ADD CONSTRAINT calculation_power_order_id_fkey FOREIGN KEY (order_id) REFERENCES pr3."order"(order_id);
 X   ALTER TABLE ONLY pr3.calculation_power DROP CONSTRAINT calculation_power_order_id_fkey;
       pr3          postgres    false    203    205    2709            �
           2606    16578 6   calculation_power calculation_power_performers_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY pr3.calculation_power
    ADD CONSTRAINT calculation_power_performers_id_fkey FOREIGN KEY (performers_id) REFERENCES pr3.performers(performers_id);
 ]   ALTER TABLE ONLY pr3.calculation_power DROP CONSTRAINT calculation_power_performers_id_fkey;
       pr3          postgres    false    200    205    2703            �
           2606    16522 ,   material material_ordering_materials_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY pr3.material
    ADD CONSTRAINT material_ordering_materials_id_fkey FOREIGN KEY (ordering_materials_id) REFERENCES pr3.ordering_materials(ordering_materials_id);
 S   ALTER TABLE ONLY pr3.material DROP CONSTRAINT material_ordering_materials_id_fkey;
       pr3          postgres    false    202    201    2705            �
           2606    16537    order order_deliver_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY pr3."order"
    ADD CONSTRAINT order_deliver_id_fkey FOREIGN KEY (deliver_id) REFERENCES pr3.deliver(deliver_id);
 D   ALTER TABLE ONLY pr3."order" DROP CONSTRAINT order_deliver_id_fkey;
       pr3          postgres    false    203    199    2701            �
           2606    16542    order order_pattern_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY pr3."order"
    ADD CONSTRAINT order_pattern_id_fkey FOREIGN KEY (pattern_id) REFERENCES pr3.pattern(pattern_id);
 D   ALTER TABLE ONLY pr3."order" DROP CONSTRAINT order_pattern_id_fkey;
       pr3          postgres    false    203    198    2699                  x������ � �            x������ � �         )   x�3�L�442�L�2�,�461�L�2�L�L8��b���� oc            x������ � �            x������ � �         $   x�3�442�2�42626�2�422464����� >�7            x�3�442bC#]0����� )�r             x�3�,�424662�22����b���� >oO     