.class final Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;
.super Ljava/lang/Object;
.source "MetadataUtil.java"


# static fields
.field private static final PICTURE_TYPE_FRONT_COVER:I = 0x3

.field private static final SHORT_TYPE_ALBUM:I = 0x616c62

.field private static final SHORT_TYPE_ARTIST:I = 0x415254

.field private static final SHORT_TYPE_COMMENT:I = 0x636d74

.field private static final SHORT_TYPE_COMPOSER_1:I = 0x636f6d

.field private static final SHORT_TYPE_COMPOSER_2:I = 0x777274

.field private static final SHORT_TYPE_ENCODER:I = 0x746f6f

.field private static final SHORT_TYPE_GENRE:I = 0x67656e

.field private static final SHORT_TYPE_LYRICS:I = 0x6c7972

.field private static final SHORT_TYPE_NAME_1:I = 0x6e616d

.field private static final SHORT_TYPE_NAME_2:I = 0x74726b

.field private static final SHORT_TYPE_YEAR:I = 0x646179

.field static final STANDARD_GENRES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MetadataUtil"

.field private static final TYPE_ALBUM_ARTIST:I = 0x61415254

.field private static final TYPE_COMPILATION:I = 0x6370696c

.field private static final TYPE_COVER_ART:I = 0x636f7672

.field private static final TYPE_DISK_NUMBER:I = 0x6469736b

.field private static final TYPE_GAPLESS_ALBUM:I = 0x70676170

.field private static final TYPE_GENRE:I = 0x676e7265

.field private static final TYPE_GROUPING:I = 0x677270

.field private static final TYPE_INTERNAL:I = 0x2d2d2d2d

.field private static final TYPE_RATING:I = 0x72746e67

.field private static final TYPE_SORT_ALBUM:I = 0x736f616c

.field private static final TYPE_SORT_ALBUM_ARTIST:I = 0x736f6161

.field private static final TYPE_SORT_ARTIST:I = 0x736f6172

.field private static final TYPE_SORT_COMPOSER:I = 0x736f636f

.field private static final TYPE_SORT_TRACK_NAME:I = 0x736f6e6d

.field private static final TYPE_TEMPO:I = 0x746d706f

.field private static final TYPE_TOP_BYTE_COPYRIGHT:I = 0xa9

.field private static final TYPE_TOP_BYTE_REPLACEMENT:I = 0xfd

.field private static final TYPE_TRACK_NUMBER:I = 0x74726b6e

.field private static final TYPE_TV_SHOW:I = 0x74767368

.field private static final TYPE_TV_SORT_SHOW:I = 0x736f736e


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 82
    const/16 v0, 0xc0

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

    const-string v2, "Afro-Punk"

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

    const/16 v1, 0x94

    const-string v2, "Abstract"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "Art Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "Baroque"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "Bhangra"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "Big beat"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "Breakbeat"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "Chillout"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "Downtempo"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "Dub"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "EBM"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "Eclectic"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "Electro"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "Electroclash"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "Emo"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "Experimental"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "Garage"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "Global"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "IDM"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "Illbient"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "Industro-Goth"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "Jam Band"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "Krautrock"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "Leftfield"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "Lounge"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "Math Rock"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "New Romantic"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "Nu-Breakz"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "Post-Punk"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "Post-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "Psytrance"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "Shoegaze"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "Space Rock"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "Trop Rock"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "World Music"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "Neoclassical"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "Audiobook"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "Audio theatre"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "Neue Deutsche Welle"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "Podcast"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "Indie-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "G-Funk"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "Dubstep"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "Garage Rock"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "Psybient"

    aput-object v2, v0, v1

    sput-object v0, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseCommentAttribute(ILccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/CommentFrame;
    .locals 5
    .param p0, "type"    # I
    .param p1, "data"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    .line 463
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 464
    .local v0, "atomSize":I
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 465
    .local v1, "atomType":I
    const v2, 0x64617461

    if-ne v1, v2, :cond_0

    .line 466
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 467
    add-int/lit8 v2, v0, -0x10

    invoke-virtual {p1, v2}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, "value":Ljava/lang/String;
    new-instance v3, Lccsancom/google/android/exoplayer2/metadata/id3/CommentFrame;

    const-string/jumbo v4, "und"

    invoke-direct {v3, v4, v2, v2}, Lccsancom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 470
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    const-string v2, "Failed to parse comment attribute: "

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    const-string v3, "MetadataUtil"

    invoke-static {v3, v2}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/4 v2, 0x0

    return-object v2
.end method

.method private static parseCoverArt(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/ApicFrame;
    .locals 9
    .param p0, "data"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    .line 532
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 533
    .local v0, "atomSize":I
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 534
    .local v1, "atomType":I
    const-string v2, "MetadataUtil"

    const/4 v3, 0x0

    const v4, 0x64617461

    if-ne v1, v4, :cond_3

    .line 535
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 536
    .local v4, "fullVersionInt":I
    invoke-static {v4}, Lccsancom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v5

    .line 537
    .local v5, "flags":I
    const/16 v6, 0xd

    if-ne v5, v6, :cond_0

    const-string v6, "image/jpeg"

    goto :goto_0

    :cond_0
    const/16 v6, 0xe

    if-ne v5, v6, :cond_1

    const-string v6, "image/png"

    goto :goto_0

    :cond_1
    move-object v6, v3

    .line 538
    .local v6, "mimeType":Ljava/lang/String;
    :goto_0
    if-nez v6, :cond_2

    .line 539
    const/16 v7, 0x29

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Unrecognized cover art flags: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    return-object v3

    .line 542
    :cond_2
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 543
    add-int/lit8 v2, v0, -0x10

    new-array v2, v2, [B

    .line 544
    .local v2, "pictureData":[B
    const/4 v7, 0x0

    array-length v8, v2

    invoke-virtual {p0, v2, v7, v8}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 545
    new-instance v7, Lccsancom/google/android/exoplayer2/metadata/id3/ApicFrame;

    const/4 v8, 0x3

    invoke-direct {v7, v6, v3, v8, v2}, Lccsancom/google/android/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v7

    .line 551
    .end local v2    # "pictureData":[B
    .end local v4    # "fullVersionInt":I
    .end local v5    # "flags":I
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_3
    const-string v4, "Failed to parse cover art attribute"

    invoke-static {v2, v4}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    return-object v3
.end method

.method public static parseIlstElement(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;
    .locals 8
    .param p0, "ilst"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    .line 349
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 350
    .local v0, "position":I
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/2addr v1, v0

    .line 351
    .local v1, "endPosition":I
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 352
    .local v2, "type":I
    shr-int/lit8 v3, v2, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 354
    .local v3, "typeTopByte":I
    const/16 v4, 0xa9

    if-eq v3, v4, :cond_11

    const/16 v4, 0xfd

    if-ne v3, v4, :cond_0

    goto/16 :goto_0

    .line 377
    :cond_0
    const v4, 0x676e7265

    if-ne v2, v4, :cond_1

    .line 378
    :try_start_0
    invoke-static {p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseStandardGenreAttribute(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 378
    return-object v4

    .line 379
    :cond_1
    const v4, 0x6469736b

    if-ne v2, v4, :cond_2

    .line 380
    :try_start_1
    const-string v4, "TPOS"

    invoke-static {v2, v4, p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 380
    return-object v4

    .line 381
    :cond_2
    const v4, 0x74726b6e

    if-ne v2, v4, :cond_3

    .line 382
    :try_start_2
    const-string v4, "TRCK"

    invoke-static {v2, v4, p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 382
    return-object v4

    .line 383
    :cond_3
    const v4, 0x746d706f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v4, :cond_4

    .line 384
    :try_start_3
    const-string v4, "TBPM"

    invoke-static {v2, v4, p0, v6, v5}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lccsancom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 384
    return-object v4

    .line 385
    :cond_4
    const v4, 0x6370696c

    if-ne v2, v4, :cond_5

    .line 386
    :try_start_4
    const-string v4, "TCMP"

    invoke-static {v2, v4, p0, v6, v6}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lccsancom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 386
    return-object v4

    .line 387
    :cond_5
    const v4, 0x636f7672

    if-ne v2, v4, :cond_6

    .line 388
    :try_start_5
    invoke-static {p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseCoverArt(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/ApicFrame;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 388
    return-object v4

    .line 389
    :cond_6
    const v4, 0x61415254

    if-ne v2, v4, :cond_7

    .line 390
    :try_start_6
    const-string v4, "TPE2"

    invoke-static {v2, v4, p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 390
    return-object v4

    .line 391
    :cond_7
    const v4, 0x736f6e6d

    if-ne v2, v4, :cond_8

    .line 392
    :try_start_7
    const-string v4, "TSOT"

    invoke-static {v2, v4, p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 392
    return-object v4

    .line 393
    :cond_8
    const v4, 0x736f616c

    if-ne v2, v4, :cond_9

    .line 394
    :try_start_8
    const-string v4, "TSO2"

    invoke-static {v2, v4, p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 394
    return-object v4

    .line 395
    :cond_9
    const v4, 0x736f6172

    if-ne v2, v4, :cond_a

    .line 396
    :try_start_9
    const-string v4, "TSOA"

    invoke-static {v2, v4, p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 396
    return-object v4

    .line 397
    :cond_a
    const v4, 0x736f6161

    if-ne v2, v4, :cond_b

    .line 398
    :try_start_a
    const-string v4, "TSOP"

    invoke-static {v2, v4, p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 398
    return-object v4

    .line 399
    :cond_b
    const v4, 0x736f636f

    if-ne v2, v4, :cond_c

    .line 400
    :try_start_b
    const-string v4, "TSOC"

    invoke-static {v2, v4, p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 400
    return-object v4

    .line 401
    :cond_c
    const v4, 0x72746e67

    if-ne v2, v4, :cond_d

    .line 402
    :try_start_c
    const-string v4, "ITUNESADVISORY"

    invoke-static {v2, v4, p0, v5, v5}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lccsancom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 402
    return-object v4

    .line 403
    :cond_d
    const v4, 0x70676170

    if-ne v2, v4, :cond_e

    .line 404
    :try_start_d
    const-string v4, "ITUNESGAPLESS"

    invoke-static {v2, v4, p0, v5, v6}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lccsancom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 404
    return-object v4

    .line 405
    :cond_e
    const v4, 0x736f736e

    if-ne v2, v4, :cond_f

    .line 406
    :try_start_e
    const-string v4, "TVSHOWSORT"

    invoke-static {v2, v4, p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 406
    return-object v4

    .line 407
    :cond_f
    const v4, 0x74767368

    if-ne v2, v4, :cond_10

    .line 408
    :try_start_f
    const-string v4, "TVSHOW"

    invoke-static {v2, v4, p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 408
    return-object v4

    .line 409
    :cond_10
    const v4, 0x2d2d2d2d

    if-ne v2, v4, :cond_1c

    .line 410
    :try_start_10
    invoke-static {p0, v1}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseInternalAttribute(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;I)Lccsancom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 410
    return-object v4

    .line 355
    :cond_11
    :goto_0
    const v4, 0xffffff

    and-int/2addr v4, v2

    .line 356
    .local v4, "shortType":I
    const v5, 0x636d74

    if-ne v4, v5, :cond_12

    .line 357
    :try_start_11
    invoke-static {v2, p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseCommentAttribute(ILccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/CommentFrame;

    move-result-object v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 357
    return-object v5

    .line 415
    .end local v4    # "shortType":I
    :catchall_0
    move-exception v4

    goto/16 :goto_4

    .line 358
    .restart local v4    # "shortType":I
    :cond_12
    const v5, 0x6e616d

    if-eq v4, v5, :cond_1f

    const v5, 0x74726b

    if-ne v4, v5, :cond_13

    goto/16 :goto_3

    .line 360
    :cond_13
    const v5, 0x636f6d

    if-eq v4, v5, :cond_1e

    const v5, 0x777274

    if-ne v4, v5, :cond_14

    goto/16 :goto_2

    .line 362
    :cond_14
    const v5, 0x646179

    if-ne v4, v5, :cond_15

    .line 363
    :try_start_12
    const-string v5, "TDRC"

    invoke-static {v2, v5, p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 363
    return-object v5

    .line 364
    :cond_15
    const v5, 0x415254

    if-ne v4, v5, :cond_16

    .line 365
    :try_start_13
    const-string v5, "TPE1"

    invoke-static {v2, v5, p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 365
    return-object v5

    .line 366
    :cond_16
    const v5, 0x746f6f

    if-ne v4, v5, :cond_17

    .line 367
    :try_start_14
    const-string v5, "TSSE"

    invoke-static {v2, v5, p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 367
    return-object v5

    .line 368
    :cond_17
    const v5, 0x616c62

    if-ne v4, v5, :cond_18

    .line 369
    :try_start_15
    const-string v5, "TALB"

    invoke-static {v2, v5, p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 369
    return-object v5

    .line 370
    :cond_18
    const v5, 0x6c7972

    if-ne v4, v5, :cond_19

    .line 371
    :try_start_16
    const-string v5, "USLT"

    invoke-static {v2, v5, p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 371
    return-object v5

    .line 372
    :cond_19
    const v5, 0x67656e

    if-ne v4, v5, :cond_1a

    .line 373
    :try_start_17
    const-string v5, "TCON"

    invoke-static {v2, v5, p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 373
    return-object v5

    .line 374
    :cond_1a
    const v5, 0x677270

    if-ne v4, v5, :cond_1b

    .line 375
    :try_start_18
    const-string v5, "TIT1"

    invoke-static {v2, v5, p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 375
    return-object v5

    .line 377
    .end local v4    # "shortType":I
    :cond_1b
    nop

    .line 412
    :cond_1c
    :try_start_19
    const-string v4, "MetadataUtil"

    const-string v5, "Skipped unknown metadata entry: "

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1d

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1d
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_1
    invoke-static {v4, v5}, Lccsancom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 413
    const/4 v4, 0x0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 413
    return-object v4

    .line 361
    .restart local v4    # "shortType":I
    :cond_1e
    :goto_2
    :try_start_1a
    const-string v5, "TCOM"

    invoke-static {v2, v5, p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 361
    return-object v5

    .line 359
    :cond_1f
    :goto_3
    :try_start_1b
    const-string v5, "TIT2"

    invoke-static {v2, v5, p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 415
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 359
    return-object v5

    .line 415
    .end local v4    # "shortType":I
    :goto_4
    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 416
    throw v4
.end method

.method private static parseIndexAndCountAttribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 9
    .param p0, "type"    # I
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "data"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    .line 497
    invoke-virtual {p2}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 498
    .local v0, "atomSize":I
    invoke-virtual {p2}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 499
    .local v1, "atomType":I
    const/4 v2, 0x0

    const v3, 0x64617461

    if-ne v1, v3, :cond_1

    const/16 v3, 0x16

    if-lt v0, v3, :cond_1

    .line 500
    const/16 v3, 0xa

    invoke-virtual {p2, v3}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 501
    invoke-virtual {p2}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 502
    .local v3, "index":I
    if-lez v3, :cond_1

    .line 503
    const/16 v4, 0xb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 504
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p2}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 505
    .local v5, "count":I
    if-lez v5, :cond_0

    .line 506
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0xc

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 508
    :cond_0
    new-instance v6, Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {v6, p1, v2, v4}, Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 511
    .end local v3    # "index":I
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "count":I
    :cond_1
    const-string v3, "Failed to parse index/count attribute: "

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    const-string v4, "MetadataUtil"

    invoke-static {v4, v3}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-object v2
.end method

.method private static parseInternalAttribute(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;I)Lccsancom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .locals 8
    .param p0, "data"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "endPosition"    # I

    .line 557
    const/4 v0, 0x0

    .line 558
    .local v0, "domain":Ljava/lang/String;
    const/4 v1, 0x0

    .line 559
    .local v1, "name":Ljava/lang/String;
    const/4 v2, -0x1

    .line 560
    .local v2, "dataAtomPosition":I
    const/4 v3, -0x1

    .line 561
    .local v3, "dataAtomSize":I
    :goto_0
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    if-ge v4, p1, :cond_3

    .line 562
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 563
    .local v4, "atomPosition":I
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 564
    .local v5, "atomSize":I
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 565
    .local v6, "atomType":I
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 566
    const v7, 0x6d65616e

    if-ne v6, v7, :cond_0

    .line 567
    add-int/lit8 v7, v5, -0xc

    invoke-virtual {p0, v7}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 568
    :cond_0
    const v7, 0x6e616d65

    if-ne v6, v7, :cond_1

    .line 569
    add-int/lit8 v7, v5, -0xc

    invoke-virtual {p0, v7}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 571
    :cond_1
    const v7, 0x64617461

    if-ne v6, v7, :cond_2

    .line 572
    move v2, v4

    .line 573
    move v3, v5

    .line 575
    :cond_2
    add-int/lit8 v7, v5, -0xc

    invoke-virtual {p0, v7}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 577
    .end local v4    # "atomPosition":I
    .end local v5    # "atomSize":I
    .end local v6    # "atomType":I
    :goto_1
    goto :goto_0

    .line 578
    :cond_3
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    goto :goto_2

    .line 581
    :cond_4
    invoke-virtual {p0, v2}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 582
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 583
    add-int/lit8 v4, v3, -0x10

    invoke-virtual {p0, v4}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v4

    .line 584
    .local v4, "value":Ljava/lang/String;
    new-instance v5, Lccsancom/google/android/exoplayer2/metadata/id3/InternalFrame;

    invoke-direct {v5, v0, v1, v4}, Lccsancom/google/android/exoplayer2/metadata/id3/InternalFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 579
    .end local v4    # "value":Ljava/lang/String;
    :cond_5
    :goto_2
    const/4 v4, 0x0

    return-object v4
.end method

.method public static parseMdtaMetadataEntryFromIlst(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lccsancom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;
    .locals 8
    .param p0, "ilst"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "endPosition"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 431
    :goto_0
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    move v1, v0

    .local v1, "atomPosition":I
    if-ge v0, p1, :cond_1

    .line 432
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 433
    .local v0, "atomSize":I
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 434
    .local v2, "atomType":I
    const v3, 0x64617461

    if-ne v2, v3, :cond_0

    .line 435
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 436
    .local v3, "typeIndicator":I
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 437
    .local v4, "localeIndicator":I
    add-int/lit8 v5, v0, -0x10

    .line 438
    .local v5, "dataSize":I
    new-array v6, v5, [B

    .line 439
    .local v6, "value":[B
    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, v5}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 440
    new-instance v7, Lccsancom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    invoke-direct {v7, p2, v6, v4, v3}, Lccsancom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BII)V

    return-object v7

    .line 442
    .end local v3    # "typeIndicator":I
    .end local v4    # "localeIndicator":I
    .end local v5    # "dataSize":I
    .end local v6    # "value":[B
    :cond_0
    add-int v3, v1, v0

    invoke-virtual {p0, v3}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 443
    .end local v0    # "atomSize":I
    .end local v2    # "atomType":I
    goto :goto_0

    .line 444
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseStandardGenreAttribute(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 5
    .param p0, "data"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    .line 517
    invoke-static {p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v0

    .line 520
    .local v0, "genreCode":I
    const/4 v1, 0x0

    if-lez v0, :cond_0

    sget-object v2, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    array-length v3, v2

    if-gt v0, v3, :cond_0

    .line 521
    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    goto :goto_0

    .line 522
    :cond_0
    move-object v2, v1

    :goto_0
    nop

    .line 523
    .local v2, "genreString":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 524
    new-instance v3, Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    const-string v4, "TCON"

    invoke-direct {v3, v4, v1, v2}, Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 526
    :cond_1
    const-string v3, "MetadataUtil"

    const-string v4, "Failed to parse standard genre code"

    invoke-static {v3, v4}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-object v1
.end method

.method private static parseTextAttribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 6
    .param p0, "type"    # I
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    .line 450
    invoke-virtual {p2}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 451
    .local v0, "atomSize":I
    invoke-virtual {p2}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 452
    .local v1, "atomType":I
    const/4 v2, 0x0

    const v3, 0x64617461

    if-ne v1, v3, :cond_0

    .line 453
    const/16 v3, 0x8

    invoke-virtual {p2, v3}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 454
    add-int/lit8 v3, v0, -0x10

    invoke-virtual {p2, v3}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, "value":Ljava/lang/String;
    new-instance v4, Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {v4, p1, v2, v3}, Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 457
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    const-string v3, "Failed to parse text attribute: "

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    const-string v4, "MetadataUtil"

    invoke-static {v4, v3}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    return-object v2
.end method

.method private static parseUint8Attribute(ILjava/lang/String;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lccsancom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .locals 5
    .param p0, "type"    # I
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;
    .param p3, "isTextInformationFrame"    # Z
    .param p4, "isBoolean"    # Z

    .line 481
    invoke-static {p2}, Lccsancom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v0

    .line 482
    .local v0, "value":I
    if-eqz p4, :cond_0

    .line 483
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 485
    :cond_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 486
    if-eqz p3, :cond_1

    .line 487
    new-instance v2, Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v1, v3}, Lccsancom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_1
    new-instance v2, Lccsancom/google/android/exoplayer2/metadata/id3/CommentFrame;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "und"

    invoke-direct {v2, v3, p1, v1}, Lccsancom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :goto_0
    return-object v2

    .line 490
    :cond_2
    const-string v2, "Failed to parse uint8 attribute: "

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_1
    const-string v3, "MetadataUtil"

    invoke-static {v3, v2}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    return-object v1
.end method

.method private static parseUint8AttributeValue(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 3
    .param p0, "data"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    .line 588
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 589
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 590
    .local v0, "atomType":I
    const v1, 0x64617461

    if-ne v0, v1, :cond_0

    .line 591
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 592
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    return v1

    .line 594
    :cond_0
    const-string v1, "MetadataUtil"

    const-string v2, "Failed to parse uint8 attribute value"

    invoke-static {v1, v2}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/4 v1, -0x1

    return v1
.end method

.method public static setFormatGaplessInfo(ILccsancom/google/android/exoplayer2/extractor/GaplessInfoHolder;Lccsancom/google/android/exoplayer2/Format$Builder;)V
    .locals 2
    .param p0, "trackType"    # I
    .param p1, "gaplessInfoHolder"    # Lccsancom/google/android/exoplayer2/extractor/GaplessInfoHolder;
    .param p2, "formatBuilder"    # Lccsancom/google/android/exoplayer2/Format$Builder;

    .line 331
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget v0, p1, Lccsancom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 333
    invoke-virtual {p2, v0}, Lccsancom/google/android/exoplayer2/Format$Builder;->setEncoderDelay(I)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget v1, p1, Lccsancom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 334
    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/Format$Builder;->setEncoderPadding(I)Lccsancom/google/android/exoplayer2/Format$Builder;

    .line 336
    :cond_0
    return-void
.end method

.method public static varargs setFormatMetadata(ILccsancom/google/android/exoplayer2/metadata/Metadata;Lccsancom/google/android/exoplayer2/metadata/Metadata;Lccsancom/google/android/exoplayer2/Format$Builder;[Lccsancom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 8
    .param p0, "trackType"    # I
    .param p1, "udtaMetaMetadata"    # Lccsancom/google/android/exoplayer2/metadata/Metadata;
    .param p2, "mdtaMetadata"    # Lccsancom/google/android/exoplayer2/metadata/Metadata;
    .param p3, "formatBuilder"    # Lccsancom/google/android/exoplayer2/Format$Builder;
    .param p4, "additionalMetadata"    # [Lccsancom/google/android/exoplayer2/metadata/Metadata;

    .line 294
    new-instance v0, Lccsancom/google/android/exoplayer2/metadata/Metadata;

    const/4 v1, 0x0

    new-array v2, v1, [Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v0, v2}, Lccsancom/google/android/exoplayer2/metadata/Metadata;-><init>([Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 296
    .local v0, "formatMetadata":Lccsancom/google/android/exoplayer2/metadata/Metadata;
    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    .line 298
    if-eqz p1, :cond_2

    .line 299
    move-object v0, p1

    goto :goto_1

    .line 301
    :cond_0
    const/4 v3, 0x2

    if-ne p0, v3, :cond_2

    .line 303
    if-eqz p2, :cond_2

    .line 304
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p2}, Lccsancom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 305
    invoke-virtual {p2, v3}, Lccsancom/google/android/exoplayer2/metadata/Metadata;->get(I)Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v4

    .line 306
    .local v4, "entry":Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;
    instance-of v5, v4, Lccsancom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    if-eqz v5, :cond_1

    .line 307
    move-object v5, v4

    check-cast v5, Lccsancom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    .line 308
    .local v5, "mdtaMetadataEntry":Lccsancom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;
    iget-object v6, v5, Lccsancom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    const-string v7, "com.android.capture.fps"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 309
    new-instance v6, Lccsancom/google/android/exoplayer2/metadata/Metadata;

    new-array v2, v2, [Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v5, v2, v1

    invoke-direct {v6, v2}, Lccsancom/google/android/exoplayer2/metadata/Metadata;-><init>([Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    move-object v0, v6

    .line 310
    goto :goto_1

    .line 304
    .end local v4    # "entry":Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;
    .end local v5    # "mdtaMetadataEntry":Lccsancom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 317
    .end local v3    # "i":I
    :cond_2
    :goto_1
    array-length v2, p4

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, p4, v1

    .line 318
    .local v3, "metadata":Lccsancom/google/android/exoplayer2/metadata/Metadata;
    invoke-virtual {v0, v3}, Lccsancom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lccsancom/google/android/exoplayer2/metadata/Metadata;)Lccsancom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    .line 317
    .end local v3    # "metadata":Lccsancom/google/android/exoplayer2/metadata/Metadata;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 321
    :cond_3
    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 322
    invoke-virtual {p3, v0}, Lccsancom/google/android/exoplayer2/Format$Builder;->setMetadata(Lccsancom/google/android/exoplayer2/metadata/Metadata;)Lccsancom/google/android/exoplayer2/Format$Builder;

    .line 324
    :cond_4
    return-void
.end method
