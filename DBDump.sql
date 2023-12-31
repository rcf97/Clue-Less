PGDMP  "    '            
    {            Skeletal    16.0    16.0 ,               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16405    Skeletal    DATABASE     �   CREATE DATABASE "Skeletal" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.utf8';
    DROP DATABASE "Skeletal";
                postgres    false            �            1259    16459    cards    TABLE     �   CREATE TABLE public.cards (
    card_id integer NOT NULL,
    card_type character varying(20) NOT NULL,
    card_name character varying(50) NOT NULL
);
    DROP TABLE public.cards;
       public         heap    postgres    false            �            1259    16458    cards_card_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cards_card_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.cards_card_id_seq;
       public          postgres    false    224                       0    0    cards_card_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.cards_card_id_seq OWNED BY public.cards.card_id;
          public          postgres    false    223            �            1259    16442    game_actions    TABLE     �   CREATE TABLE public.game_actions (
    action_id integer NOT NULL,
    game_id integer,
    player_id integer,
    "timestamp" timestamp without time zone NOT NULL,
    action_type character varying(50) NOT NULL
);
     DROP TABLE public.game_actions;
       public         heap    postgres    false            �            1259    16441    game_actions_action_id_seq    SEQUENCE     �   CREATE SEQUENCE public.game_actions_action_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.game_actions_action_id_seq;
       public          postgres    false    222                       0    0    game_actions_action_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.game_actions_action_id_seq OWNED BY public.game_actions.action_id;
          public          postgres    false    221            �            1259    16416 	   game_info    TABLE     �   CREATE TABLE public.game_info (
    game_id integer NOT NULL,
    active boolean NOT NULL,
    start_time timestamp without time zone NOT NULL,
    end_time timestamp without time zone,
    num_players integer,
    case_file integer[]
);
    DROP TABLE public.game_info;
       public         heap    postgres    false            �            1259    16415    game_info_game_id_seq    SEQUENCE     �   CREATE SEQUENCE public.game_info_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.game_info_game_id_seq;
       public          postgres    false    218                       0    0    game_info_game_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.game_info_game_id_seq OWNED BY public.game_info.game_id;
          public          postgres    false    217            �            1259    16430 	   gamestate    TABLE     �   CREATE TABLE public.gamestate (
    state_id integer NOT NULL,
    game_id integer,
    "timestamp" timestamp without time zone NOT NULL,
    currentid character varying(50)
);
    DROP TABLE public.gamestate;
       public         heap    postgres    false            �            1259    16429    game_states_state_id_seq    SEQUENCE     �   CREATE SEQUENCE public.game_states_state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.game_states_state_id_seq;
       public          postgres    false    220                       0    0    game_states_state_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.game_states_state_id_seq OWNED BY public.gamestate.state_id;
          public          postgres    false    219            �            1259    16407    players    TABLE     6  CREATE TABLE public.players (
    player_id integer NOT NULL,
    token character varying(100) NOT NULL,
    player_name character varying(50) NOT NULL,
    character_name character varying(50) NOT NULL,
    location character varying(50),
    card_ids integer[],
    may_stay boolean DEFAULT true NOT NULL
);
    DROP TABLE public.players;
       public         heap    postgres    false            �            1259    16406    players_player_id_seq    SEQUENCE     �   CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.players_player_id_seq;
       public          postgres    false    216                       0    0    players_player_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;
          public          postgres    false    215            i           2604    16462    cards card_id    DEFAULT     n   ALTER TABLE ONLY public.cards ALTER COLUMN card_id SET DEFAULT nextval('public.cards_card_id_seq'::regclass);
 <   ALTER TABLE public.cards ALTER COLUMN card_id DROP DEFAULT;
       public          postgres    false    223    224    224            h           2604    16445    game_actions action_id    DEFAULT     �   ALTER TABLE ONLY public.game_actions ALTER COLUMN action_id SET DEFAULT nextval('public.game_actions_action_id_seq'::regclass);
 E   ALTER TABLE public.game_actions ALTER COLUMN action_id DROP DEFAULT;
       public          postgres    false    221    222    222            f           2604    16419    game_info game_id    DEFAULT     v   ALTER TABLE ONLY public.game_info ALTER COLUMN game_id SET DEFAULT nextval('public.game_info_game_id_seq'::regclass);
 @   ALTER TABLE public.game_info ALTER COLUMN game_id DROP DEFAULT;
       public          postgres    false    217    218    218            g           2604    16433    gamestate state_id    DEFAULT     z   ALTER TABLE ONLY public.gamestate ALTER COLUMN state_id SET DEFAULT nextval('public.game_states_state_id_seq'::regclass);
 A   ALTER TABLE public.gamestate ALTER COLUMN state_id DROP DEFAULT;
       public          postgres    false    219    220    220            d           2604    16410    players player_id    DEFAULT     v   ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);
 @   ALTER TABLE public.players ALTER COLUMN player_id DROP DEFAULT;
       public          postgres    false    215    216    216                      0    16459    cards 
   TABLE DATA           >   COPY public.cards (card_id, card_type, card_name) FROM stdin;
    public          postgres    false    224   z3                 0    16442    game_actions 
   TABLE DATA           _   COPY public.game_actions (action_id, game_id, player_id, "timestamp", action_type) FROM stdin;
    public          postgres    false    222   �3                 0    16416 	   game_info 
   TABLE DATA           b   COPY public.game_info (game_id, active, start_time, end_time, num_players, case_file) FROM stdin;
    public          postgres    false    218   
4                 0    16430 	   gamestate 
   TABLE DATA           N   COPY public.gamestate (state_id, game_id, "timestamp", currentid) FROM stdin;
    public          postgres    false    220   J4       
          0    16407    players 
   TABLE DATA           n   COPY public.players (player_id, token, player_name, character_name, location, card_ids, may_stay) FROM stdin;
    public          postgres    false    216   �4                  0    0    cards_card_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.cards_card_id_seq', 1, false);
          public          postgres    false    223                       0    0    game_actions_action_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.game_actions_action_id_seq', 1, false);
          public          postgres    false    221                        0    0    game_info_game_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.game_info_game_id_seq', 1, false);
          public          postgres    false    217            !           0    0    game_states_state_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.game_states_state_id_seq', 1, false);
          public          postgres    false    219            "           0    0    players_player_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.players_player_id_seq', 1, false);
          public          postgres    false    215            u           2606    16464    cards cards_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.cards
    ADD CONSTRAINT cards_pkey PRIMARY KEY (card_id);
 :   ALTER TABLE ONLY public.cards DROP CONSTRAINT cards_pkey;
       public            postgres    false    224            s           2606    16447    game_actions game_actions_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.game_actions
    ADD CONSTRAINT game_actions_pkey PRIMARY KEY (action_id);
 H   ALTER TABLE ONLY public.game_actions DROP CONSTRAINT game_actions_pkey;
       public            postgres    false    222            o           2606    16423    game_info game_info_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.game_info
    ADD CONSTRAINT game_info_pkey PRIMARY KEY (game_id);
 B   ALTER TABLE ONLY public.game_info DROP CONSTRAINT game_info_pkey;
       public            postgres    false    218            q           2606    16435    gamestate game_states_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.gamestate
    ADD CONSTRAINT game_states_pkey PRIMARY KEY (state_id);
 D   ALTER TABLE ONLY public.gamestate DROP CONSTRAINT game_states_pkey;
       public            postgres    false    220            k           2606    16412    players players_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);
 >   ALTER TABLE ONLY public.players DROP CONSTRAINT players_pkey;
       public            postgres    false    216            m           2606    16414    players players_token_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_token_key UNIQUE (token);
 C   ALTER TABLE ONLY public.players DROP CONSTRAINT players_token_key;
       public            postgres    false    216            x           2606    16448 &   game_actions game_actions_game_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.game_actions
    ADD CONSTRAINT game_actions_game_id_fkey FOREIGN KEY (game_id) REFERENCES public.game_info(game_id);
 P   ALTER TABLE ONLY public.game_actions DROP CONSTRAINT game_actions_game_id_fkey;
       public          postgres    false    4719    222    218            y           2606    16453 (   game_actions game_actions_player_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.game_actions
    ADD CONSTRAINT game_actions_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.players(player_id);
 R   ALTER TABLE ONLY public.game_actions DROP CONSTRAINT game_actions_player_id_fkey;
       public          postgres    false    4715    222    216            v           2606    16424 '   game_info game_info_current_player_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.game_info
    ADD CONSTRAINT game_info_current_player_fkey FOREIGN KEY (num_players) REFERENCES public.players(player_id);
 Q   ALTER TABLE ONLY public.game_info DROP CONSTRAINT game_info_current_player_fkey;
       public          postgres    false    216    4715    218            w           2606    16436 "   gamestate game_states_game_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.gamestate
    ADD CONSTRAINT game_states_game_id_fkey FOREIGN KEY (game_id) REFERENCES public.game_info(game_id);
 L   ALTER TABLE ONLY public.gamestate DROP CONSTRAINT game_states_game_id_fkey;
       public          postgres    false    220    4719    218               c   x�3���ON,������/�KO�2�L�H,JL.I-��-*�S��,I�2�,OM, *H-Jq� 4zg�$g��q���HML�O��2��uILO����� ��'N            x������ � �         0   x�3�,�4202�54�52V00�20 "�?NC�jC#�Z�=... �@�         '   x�3�4�4202�54�52V04�24�20�4����� S�      
   S   x�3�,I-.1��M,�L��K�t����K�Q�--.I,J�tJ��)����6�1�1��,�2��tI-J��P\R�R��8F��� ���     