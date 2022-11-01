import { createApp } from "vue";
import { createWebHistory, createRouter } from "vue-router";

// styles

import "@fortawesome/fontawesome-free/css/all.min.css";
import "@/assets/styles/tailwind.css";
import 'material-icons/iconfont/material-icons.css';

// mouting point for the whole app

import App from "@/App.vue";

// layouts

import Admin from "@/layouts/Admin.vue";
import Auth from "@/layouts/Auth.vue";

// views for Admin layout

import Dashboard from "@/views/admin/Dashboard.vue";

// views for Auth layout

import Login from "@/views/auth/Login.vue";

// views without layouts

import Landing from "@/views/Landing.vue";
import Profile from "@/views/Profile.vue";
import Album from "@/views/admin/Album";
import Genre from "@/views/admin/Genre";
import Playlist from "@/views/admin/Playlist";
import Song from "@/views/admin/Song";
import Mvmusic from "@/views/admin/Mvmusic";

// CROS

import cors from 'cors'
import CommentMv from "@/views/admin/CommentMv";
import CommentSong from "@/views/admin/CommentSong";
import LikeMv from "@/views/admin/LikeMv";
import LikeSong from "@/views/admin/LikeSong";
import User from "@/views/admin/User";
import Role from "@/views/admin/Role";
import CreateSong from "@/views/admin/CreateSong";
import CreatePlaylist from "@/views/admin/CreatePlaylist";
import CreateMvMusic from "@/views/admin/CreateMvMusic";
import CreateGenre from "@/views/admin/CreateGenre";
import CreateAlbum from "@/views/admin/CreateAlbum";
import CreateRole from "@/views/admin/CreateRole";
import Home from "@/views/cilents/Home";
import Recently from "@/views/cilents/Recently";
import ForYou from "@/views/cilents/ForYou";
import Search from "@/views/cilents/Search";
import YourLibrary from "@/views/cilents/YourLibrary";
import MusicVideo from "@/views/cilents/MusicVideo";
import Artists from "@/views/cilents/Artists";
import Genres from "@/views/cilents/Genres";
import Albums from "@/views/cilents/Albums";
import ArtistDetail from "@/views/cilents/ArtistDetail";
import UserLogin from "@/views/auth/UserLogin";
import UserRegister from "@/views/auth/UserRegister";
import PlaylistDetail from "@/views/cilents/PlaylistDetail";
import GenreDetail from "@/views/cilents/GenreDetail";
import AlbumDetail from "@/views/cilents/AlbumDetail";
import PlaylistSong from "@/views/admin/PlaylistSong";
import CreatePlaylistSong from "@/views/admin/CreatePlaylistSong";
import CreateSinger from "@/views/admin/CreateSinger";
import Singer from "@/views/admin/Singer";
import Author from "@/views/admin/Author";
import CreateAuthor from "@/views/admin/CreateAuthor";
import CreateFileDB from "@/views/admin/CreateFileDB";
import EditSinger from "@/views/admin/EditSinger";
import EditAlbum from "@/views/admin/EditAlbum";
import EditAuthor from "@/views/admin/EditAuthor";
import EditGenre from "@/views/admin/EditGenre";
import EditMvMusic from "@/views/admin/EditMvMusic";
import EditSong from "@/views/admin/EditSong";
import EditRole from "@/views/admin/EditRole";
import EditPlaylist from "@/views/admin/EditPlaylist";
import SongDetail from "@/views/cilents/SongDetail";
import FileDb from "@/views/admin/FileDb";
import Top from "@/views/admin/Top";
import CreateTop from "@/views/admin/CreateTop";
import EditTop from "@/views/admin/EditTop";

// routes

const ifAuthenticated = (to, from, next) => {
    if (localStorage.getItem('token') !== null) {
        next();
        return;
    }
    router.push('login');
};

const ifAuthenticated2 = (to, from, next) => {
    if (localStorage.getItem('token') !== null) {
        next();
        return;
    }
    router.push('auth/login');
};

const routes = [
    // User Routes
    {
        path: "/",
        component: Home,
        beforeEnter: ifAuthenticated,
    },
    {
        path: "/recently",
        component: Recently,
        beforeEnter: ifAuthenticated,
    },
    {
        path: "/for-you",
        component: ForYou,
        beforeEnter: ifAuthenticated,
    },
    {
        path: "/your_library",
        component: YourLibrary,
        beforeEnter: ifAuthenticated,
    },
    {
        path: "/search",
        component: Search,
        beforeEnter: ifAuthenticated,
    },
    {
        path: "/music_videos",
        component: MusicVideo,
        beforeEnter: ifAuthenticated,
    },
    {
        path: "/artists",
        component: Artists,
        beforeEnter: ifAuthenticated,
    },
    {
        path: "/genres",
        component: Genres,
        beforeEnter: ifAuthenticated,
    },
    {
        path: "/albums",
        component: Albums,
        beforeEnter: ifAuthenticated,
    },
    {
        path: "/artists_detail/:id",
        component: ArtistDetail,
        beforeEnter: ifAuthenticated,
    },
    {
        path: "/playlist-detail/:id",
        component: PlaylistDetail,
        beforeEnter: ifAuthenticated,
    },
    {
        path: "/genre_detail/:id",
        component: GenreDetail,
        beforeEnter: ifAuthenticated,
    },
    {
        path: "/album_detail/:id",
        component: AlbumDetail,
        beforeEnter: ifAuthenticated,
    },
    {
        path: "/song_detail/:id",
        component: SongDetail,
        beforeEnter: ifAuthenticated,
    },
    // Login For User
    {
        path: "/login",
        component: UserLogin,
    },
    {
        path: "/register",
        component: UserRegister,
    },

    // Admin Routes
    {
        path: "/admin",
        redirect: "/admin/dashboard",
        component: Admin,
        children: [
            {
                path: "/admin/dashboard",
                component: Dashboard,
                
            },
            {
                path: "/admin/album",
                component: Album,
                
            },
            {
                path: "/admin/top",
                component: Top,
                
            },
            {
                path: "/admin/createtop",
                component: CreateTop,
                
            },
            {
                path: "/admin/edittop/:id",
                component: EditTop,
                
            },
            {
                path: "/admin/files",
                component: FileDb,
                
            },
            {
                path: "/admin/editsinger/:id",
                component: EditSinger,
                
            },
            {
                path: "/admin/editsong/:id",
                component: EditSong,
                
            },
            {
                path: "/admin/editrole/:id",
                component: EditRole,
                
            },
            {
                path: "/admin/editplaylist/:id",
                component: EditPlaylist,
                
            },

            {
                path: "/admin/editalbum/:id",
                component: EditAlbum,
                
            },

            {
                path: "/admin/editauthor/:id",
                component: EditAuthor,
                
            },
            {
                path: "/admin/editgenre/:id",
                component: EditGenre,
                
            },
            {
                path: "/admin/editmvmusic/:id",
                component: EditMvMusic,
                
            },
            {
                path: "/admin/genre",
                component: Genre,
                
            },
            {
                path: "/admin/commentmv",
                component: CommentMv,
                
            },
            {
                path: "/admin/commentsong",
                component: CommentSong,
                
            },
            {
                path: "/admin/likemv",
                component: LikeMv,
                
            },
            {
                path: "/admin/likesong",
                component: LikeSong,
                
            },
            {
                path: "/admin/playlist",
                component: Playlist,
                
            },
            {
                path: "/admin/playlistsong",
                component: PlaylistSong,
                
            },
            {
                path: "/admin/createplaylistsong",
                component: CreatePlaylistSong,
                
            },
            {
                path: "/admin/createsinger",
                component: CreateSinger,
                
            },
            {
                path: "/admin/song",
                component: Song,
                
            },
            {
                path: "/admin/singer",
                component: Singer,
                
            },
            {
                path: "/admin/author",
                component: Author,
                
            },
            {
                path: "/admin/createauthor",
                component: CreateAuthor,
                
            },
            {
                path: "/admin/createfiledb",
                component: CreateFileDB,
                
            },
            {
                path: "/admin/mvmusic",
                component: Mvmusic,
                
            },
            {
                path: "/admin/createsong",
                component: CreateSong,
                
            },
            {
                path: "/admin/createplaylist",
                component: CreatePlaylist,
                
            },
            {
                path: "/admin/createmvmusic",
                component: CreateMvMusic,
                
            },
            {
                path: "/admin/creategenre",
                component: CreateGenre,
                
            },
            {
                path: "/admin/createalbum",
                component: CreateAlbum,
                
            },
            {
                path: "/admin/createrole",
                component: CreateRole,
                
            },
            {
                path: "/admin/role",
                component: Role,
                
            },
            {
                path: "/admin/user",
                component: User,
                
            },
        ],
    },
    {
        path: "/auth",
        redirect: "/auth/login",
        component: Auth,
        children: [
            {
                path: "/auth/login",
                component: Login,
            },
        ],
    },
    {
        path: "/landing",
        component: Landing,
    },
    {
        path: "/profile",
        component: Profile,
    },
    {
        path: "/admin/mainboard",
        component: Admin,
    },
    { path: "/:pathMatch(.*)*", redirect: "/" },
];

const router = createRouter({
    history: createWebHistory(),
    routes,
});

createApp(App).use(router).use(cors).mount("#app");