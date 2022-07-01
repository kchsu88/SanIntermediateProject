.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;
.super Ljava/lang/Object;
.source "MetadataUtil.java"


# static fields
.field private static final LANGUAGE_UNDEFINED:Ljava/lang/String; = "und"

.field private static final SHORT_TYPE_ALBUM:I

.field private static final SHORT_TYPE_ARTIST:I

.field private static final SHORT_TYPE_COMMENT:I

.field private static final SHORT_TYPE_COMPOSER_1:I

.field private static final SHORT_TYPE_COMPOSER_2:I

.field private static final SHORT_TYPE_ENCODER:I

.field private static final SHORT_TYPE_GENRE:I

.field private static final SHORT_TYPE_LYRICS:I

.field private static final SHORT_TYPE_NAME_1:I

.field private static final SHORT_TYPE_NAME_2:I

.field private static final SHORT_TYPE_YEAR:I

.field private static final STANDARD_GENRES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MetadataUtil"

.field private static final TYPE_ALBUM_ARTIST:I

.field private static final TYPE_COMPILATION:I

.field private static final TYPE_COVER_ART:I

.field private static final TYPE_DISK_NUMBER:I

.field private static final TYPE_GAPLESS_ALBUM:I

.field private static final TYPE_GENRE:I

.field private static final TYPE_GROUPING:I

.field private static final TYPE_INTERNAL:I

.field private static final TYPE_RATING:I

.field private static final TYPE_SORT_ALBUM:I

.field private static final TYPE_SORT_ALBUM_ARTIST:I

.field private static final TYPE_SORT_ARTIST:I

.field private static final TYPE_SORT_COMPOSER:I

.field private static final TYPE_SORT_TRACK_NAME:I

.field private static final TYPE_TEMPO:I

.field private static final TYPE_TRACK_NUMBER:I

.field private static final TYPE_TV_SHOW:I

.field private static final TYPE_TV_SORT_SHOW:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    const-string v0, "nam"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_NAME_1:I

    .line 37
    const-string v0, "trk"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_NAME_2:I

    .line 38
    const-string v0, "cmt"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMMENT:I

    .line 39
    const-string v0, "day"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_YEAR:I

    .line 40
    const-string v0, "ART"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ARTIST:I

    .line 41
    const-string v0, "too"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ENCODER:I

    .line 42
    const-string v0, "alb"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ALBUM:I

    .line 43
    const-string v0, "com"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMPOSER_1:I

    .line 44
    const-string v0, "wrt"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMPOSER_2:I

    .line 45
    const-string v0, "lyr"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_LYRICS:I

    .line 46
    const-string v0, "gen"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_GENRE:I

    .line 49
    const-string v0, "covr"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_COVER_ART:I

    .line 50
    const-string v0, "gnre"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GENRE:I

    .line 51
    const-string v0, "grp"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GROUPING:I

    .line 52
    const-string v0, "disk"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_DISK_NUMBER:I

    .line 53
    const-string v0, "trkn"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TRACK_NUMBER:I

    .line 54
    const-string v0, "tmpo"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TEMPO:I

    .line 55
    const-string v0, "cpil"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_COMPILATION:I

    .line 56
    const-string v0, "aART"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_ALBUM_ARTIST:I

    .line 57
    const-string v0, "sonm"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_TRACK_NAME:I

    .line 58
    const-string v0, "soal"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ALBUM:I

    .line 59
    const-string v0, "soar"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ARTIST:I

    .line 60
    const-string v0, "soaa"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ALBUM_ARTIST:I

    .line 61
    const-string v0, "soco"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_COMPOSER:I

    .line 64
    const-string v0, "rtng"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_RATING:I

    .line 65
    const-string v0, "pgap"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GAPLESS_ALBUM:I

    .line 66
    const-string v0, "sosn"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TV_SORT_SHOW:I

    .line 67
    const-string v0, "tvsh"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TV_SHOW:I

    .line 70
    const-string v0, "----"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_INTERNAL:I

    .line 73
    const/16 v0, 0x94

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Blues"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Classic Rock"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Country"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Disco"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Goa"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Drum & Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Club-House"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Terror"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "BritPop"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Negerpunk"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Polsk Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Beat"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Christian Gangsta Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Heavy Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Black Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Crossover"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Contemporary Christian"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Christian Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Merengue"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Salsa"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Thrash Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "Jpop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Synthpop"

    aput-object v2, v0, v1

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseCommentAttribute(ILccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/CommentFrame;
    .locals 3

    .line 199
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 200
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 201
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    if-ne v1, v2, :cond_0

    .line 202
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 203
    add-int/lit8 v0, v0, -0x10

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object p0

    .line 204
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/CommentFrame;

    const-string v0, "und"

    invoke-direct {p1, v0, p0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 206
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse comment attribute: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseCoverArt(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame;
    .locals 5

    .line 256
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 257
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 258
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    const-string v3, "MetadataUtil"

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3

    .line 259
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 260
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    .line 261
    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    const-string v2, "image/jpeg"

    goto :goto_0

    :cond_0
    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    const-string v2, "image/png"

    goto :goto_0

    :cond_1
    move-object v2, v4

    .line 262
    :goto_0
    if-nez v2, :cond_2

    .line 263
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized cover art flags: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-object v4

    .line 266
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 267
    add-int/lit8 v0, v0, -0x10

    new-array v1, v0, [B

    .line 268
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 269
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame;

    const/4 v0, 0x3

    invoke-direct {p0, v2, v4, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object p0

    .line 271
    :cond_3
    const-string p0, "Failed to parse cover art attribute"

    invoke-static {v3, p0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-object v4
.end method

.method public static parseIlstElement(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata$Entry;
    .locals 5

    .line 114
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 115
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 117
    shr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    .line 119
    const/16 v3, 0xa9

    if-eq v2, v3, :cond_11

    const v3, 0xfffd

    if-ne v2, v3, :cond_0

    goto/16 :goto_0

    .line 143
    :cond_0
    :try_start_0
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GENRE:I

    if-ne v1, v2, :cond_1

    .line 144
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseStandardGenreAttribute(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 144
    return-object v1

    .line 145
    :cond_1
    :try_start_1
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_DISK_NUMBER:I

    if-ne v1, v2, :cond_2

    .line 146
    const-string v2, "TPOS"

    invoke-static {v1, v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 146
    return-object v1

    .line 147
    :cond_2
    :try_start_2
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TRACK_NUMBER:I

    if-ne v1, v2, :cond_3

    .line 148
    const-string v2, "TRCK"

    invoke-static {v1, v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 148
    return-object v1

    .line 149
    :cond_3
    :try_start_3
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TEMPO:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_4

    .line 150
    const-string v2, "TBPM"

    invoke-static {v1, v2, p0, v4, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ZZ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 150
    return-object v1

    .line 151
    :cond_4
    :try_start_4
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_COMPILATION:I

    if-ne v1, v2, :cond_5

    .line 152
    const-string v2, "TCMP"

    invoke-static {v1, v2, p0, v4, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ZZ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 152
    return-object v1

    .line 153
    :cond_5
    :try_start_5
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_COVER_ART:I

    if-ne v1, v2, :cond_6

    .line 154
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseCoverArt(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 154
    return-object v1

    .line 155
    :cond_6
    :try_start_6
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_ALBUM_ARTIST:I

    if-ne v1, v2, :cond_7

    .line 156
    const-string v2, "TPE2"

    invoke-static {v1, v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 156
    return-object v1

    .line 157
    :cond_7
    :try_start_7
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_TRACK_NAME:I

    if-ne v1, v2, :cond_8

    .line 158
    const-string v2, "TSOT"

    invoke-static {v1, v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 158
    return-object v1

    .line 159
    :cond_8
    :try_start_8
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ALBUM:I

    if-ne v1, v2, :cond_9

    .line 160
    const-string v2, "TSO2"

    invoke-static {v1, v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 160
    return-object v1

    .line 161
    :cond_9
    :try_start_9
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ARTIST:I

    if-ne v1, v2, :cond_a

    .line 162
    const-string v2, "TSOA"

    invoke-static {v1, v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 162
    return-object v1

    .line 163
    :cond_a
    :try_start_a
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ALBUM_ARTIST:I

    if-ne v1, v2, :cond_b

    .line 164
    const-string v2, "TSOP"

    invoke-static {v1, v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 164
    return-object v1

    .line 165
    :cond_b
    :try_start_b
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_COMPOSER:I

    if-ne v1, v2, :cond_c

    .line 166
    const-string v2, "TSOC"

    invoke-static {v1, v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 166
    return-object v1

    .line 167
    :cond_c
    :try_start_c
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_RATING:I

    if-ne v1, v2, :cond_d

    .line 168
    const-string v2, "ITUNESADVISORY"

    invoke-static {v1, v2, p0, v3, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ZZ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 168
    return-object v1

    .line 169
    :cond_d
    :try_start_d
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GAPLESS_ALBUM:I

    if-ne v1, v2, :cond_e

    .line 170
    const-string v2, "ITUNESGAPLESS"

    invoke-static {v1, v2, p0, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ZZ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 170
    return-object v1

    .line 171
    :cond_e
    :try_start_e
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TV_SORT_SHOW:I

    if-ne v1, v2, :cond_f

    .line 172
    const-string v2, "TVSHOWSORT"

    invoke-static {v1, v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 172
    return-object v1

    .line 173
    :cond_f
    :try_start_f
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TV_SHOW:I

    if-ne v1, v2, :cond_10

    .line 174
    const-string v2, "TVSHOW"

    invoke-static {v1, v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 174
    return-object v1

    .line 175
    :cond_10
    :try_start_10
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_INTERNAL:I

    if-ne v1, v2, :cond_1c

    .line 176
    invoke-static {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseInternalAttribute(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 176
    return-object v1

    .line 121
    :cond_11
    :goto_0
    const v2, 0xffffff

    and-int/2addr v2, v1

    .line 122
    :try_start_11
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMMENT:I

    if-ne v2, v3, :cond_12

    .line 123
    invoke-static {v1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseCommentAttribute(ILccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/CommentFrame;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 123
    return-object v1

    .line 124
    :cond_12
    :try_start_12
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_NAME_1:I

    if-eq v2, v3, :cond_1e

    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_NAME_2:I

    if-ne v2, v3, :cond_13

    goto/16 :goto_2

    .line 126
    :cond_13
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMPOSER_1:I

    if-eq v2, v3, :cond_1d

    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMPOSER_2:I

    if-ne v2, v3, :cond_14

    goto/16 :goto_1

    .line 128
    :cond_14
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_YEAR:I

    if-ne v2, v3, :cond_15

    .line 129
    const-string v2, "TDRC"

    invoke-static {v1, v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 129
    return-object v1

    .line 130
    :cond_15
    :try_start_13
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ARTIST:I

    if-ne v2, v3, :cond_16

    .line 131
    const-string v2, "TPE1"

    invoke-static {v1, v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 131
    return-object v1

    .line 132
    :cond_16
    :try_start_14
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ENCODER:I

    if-ne v2, v3, :cond_17

    .line 133
    const-string v2, "TSSE"

    invoke-static {v1, v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 133
    return-object v1

    .line 134
    :cond_17
    :try_start_15
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ALBUM:I

    if-ne v2, v3, :cond_18

    .line 135
    const-string v2, "TALB"

    invoke-static {v1, v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 135
    return-object v1

    .line 136
    :cond_18
    :try_start_16
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_LYRICS:I

    if-ne v2, v3, :cond_19

    .line 137
    const-string v2, "USLT"

    invoke-static {v1, v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 137
    return-object v1

    .line 138
    :cond_19
    :try_start_17
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_GENRE:I

    if-ne v2, v3, :cond_1a

    .line 139
    const-string v2, "TCON"

    invoke-static {v1, v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 139
    return-object v1

    .line 140
    :cond_1a
    :try_start_18
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GROUPING:I

    if-ne v2, v3, :cond_1b

    .line 141
    const-string v2, "TIT1"

    invoke-static {v1, v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 141
    return-object v1

    .line 143
    :cond_1b
    nop

    .line 178
    :cond_1c
    :try_start_19
    const-string v2, "MetadataUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipped unknown metadata entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 179
    const/4 v1, 0x0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 179
    return-object v1

    .line 127
    :cond_1d
    :goto_1
    :try_start_1a
    const-string v2, "TCOM"

    invoke-static {v1, v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 127
    return-object v1

    .line 125
    :cond_1e
    :goto_2
    :try_start_1b
    const-string v2, "TIT2"

    invoke-static {v1, v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 181
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 125
    return-object v1

    .line 181
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 182
    throw v1
.end method

.method private static parseIndexAndCountAttribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 4

    .line 226
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 227
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 228
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    .line 229
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 230
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 231
    if-lez v0, :cond_1

    .line 232
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 233
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    .line 234
    if-lez p2, :cond_0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 237
    :cond_0
    new-instance p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {p2, p1, v3, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 240
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse index/count attribute: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-object v3
.end method

.method private static parseInternalAttribute(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;
    .locals 10

    .line 276
    nop

    .line 277
    nop

    .line 278
    nop

    .line 279
    const/4 v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 280
    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    if-ge v6, p1, :cond_3

    .line 281
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    .line 282
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 283
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 284
    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 285
    sget v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mean:I

    if-ne v8, v9, :cond_0

    .line 286
    add-int/lit8 v7, v7, -0xc

    invoke-virtual {p0, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 287
    :cond_0
    sget v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_name:I

    if-ne v8, v9, :cond_1

    .line 288
    add-int/lit8 v7, v7, -0xc

    invoke-virtual {p0, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 290
    :cond_1
    sget v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    if-ne v8, v9, :cond_2

    .line 291
    nop

    .line 292
    move v4, v6

    move v5, v7

    .line 294
    :cond_2
    add-int/lit8 v7, v7, -0xc

    invoke-virtual {p0, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 296
    :goto_1
    goto :goto_0

    .line 297
    :cond_3
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    if-ne v4, v0, :cond_4

    goto :goto_2

    .line 300
    :cond_4
    invoke-virtual {p0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 301
    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 302
    sub-int/2addr v5, p1

    invoke-virtual {p0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object p0

    .line 303
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/InternalFrame;

    invoke-direct {p1, v2, v3, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/InternalFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 298
    :cond_5
    :goto_2
    return-object v1
.end method

.method private static parseStandardGenreAttribute(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 3

    .line 245
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)I

    move-result p0

    .line 246
    const/4 v0, 0x0

    if-lez p0, :cond_0

    sget-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    array-length v2, v1

    if-gt p0, v2, :cond_0

    .line 247
    add-int/lit8 p0, p0, -0x1

    aget-object p0, v1, p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 248
    :goto_0
    if-eqz p0, :cond_1

    .line 249
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    const-string v2, "TCON"

    invoke-direct {v1, v2, v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 251
    :cond_1
    const-string p0, "MetadataUtil"

    const-string v1, "Failed to parse standard genre code"

    invoke-static {p0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-object v0
.end method

.method private static parseTextAttribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 4

    .line 187
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 188
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 189
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 190
    const/16 p0, 0x8

    invoke-virtual {p2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 191
    add-int/lit8 v0, v0, -0x10

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object p0

    .line 192
    new-instance p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {p2, p1, v3, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 194
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse text attribute: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-object v3
.end method

.method private static parseUint8Attribute(ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ZZ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;
    .locals 0

    .line 212
    invoke-static {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)I

    move-result p2

    .line 213
    if-eqz p4, :cond_0

    .line 214
    const/4 p4, 0x1

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 216
    :cond_0
    const/4 p4, 0x0

    if-ltz p2, :cond_2

    .line 217
    if-eqz p3, :cond_1

    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p4, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_1
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/CommentFrame;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "und"

    invoke-direct {p0, p3, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_0
    return-object p0

    .line 220
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse uint8 attribute: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-object p4
.end method

.method private static parseUint8AttributeValue(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)I
    .locals 2

    .line 307
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 308
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 309
    sget v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    if-ne v0, v1, :cond_0

    .line 310
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 311
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    return p0

    .line 313
    :cond_0
    const-string p0, "MetadataUtil"

    const-string v0, "Failed to parse uint8 attribute value"

    invoke-static {p0, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 p0, -0x1

    return p0
.end method
