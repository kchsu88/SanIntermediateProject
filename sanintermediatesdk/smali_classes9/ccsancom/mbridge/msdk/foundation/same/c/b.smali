.class public final Lccsancom/mbridge/msdk/foundation/same/c/b;
.super Ljava/lang/Object;
.source "CommonImageLoader.java"


# static fields
.field private static a:Lccsancom/mbridge/msdk/foundation/same/c/b;


# instance fields
.field private b:Lccsancom/mbridge/msdk/foundation/same/e/b;

.field private c:Lccsancom/mbridge/msdk/foundation/same/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/foundation/same/a/c<",
            "Ljava/lang/String;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/same/c/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Lccsanandroid/os/Handler;


# direct methods
.method private constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/c/b;->d:Ljava/util/LinkedHashMap;

    .line 38
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/c/b$1;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsancom/mbridge/msdk/foundation/same/c/b$1;-><init>(Lccsancom/mbridge/msdk/foundation/same/c/b;Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/c/b;->e:Lccsanandroid/os/Handler;

    .line 87
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/e/b;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/e/b;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/c/b;->b:Lccsancom/mbridge/msdk/foundation/same/e/b;

    .line 88
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-int p1, v0

    .line 89
    div-int/lit8 p1, p1, 0x5

    .line 90
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/a/a;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/a/a;-><init>(I)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/c/b;->c:Lccsancom/mbridge/msdk/foundation/same/a/c;

    .line 91
    return-void
.end method

.method public static a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;
    .locals 1

    .line 94
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/c/b;->a:Lccsancom/mbridge/msdk/foundation/same/c/b;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/c/b;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/foundation/same/c/b;-><init>(Lccsanandroid/content/Context;)V

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/c/b;->a:Lccsancom/mbridge/msdk/foundation/same/c/b;

    .line 97
    :cond_0
    sget-object p0, Lccsancom/mbridge/msdk/foundation/same/c/b;->a:Lccsancom/mbridge/msdk/foundation/same/c/b;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lccsancom/mbridge/msdk/foundation/same/c/d;
    .locals 1

    .line 190
    new-instance p5, Lccsancom/mbridge/msdk/foundation/same/c/b$2;

    invoke-direct {p5, p0}, Lccsancom/mbridge/msdk/foundation/same/c/b$2;-><init>(Lccsancom/mbridge/msdk/foundation/same/c/b;)V

    .line 215
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/c/d;

    invoke-direct {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/foundation/same/c/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, p4}, Lccsancom/mbridge/msdk/foundation/same/c/d;->a(Z)V

    .line 218
    invoke-virtual {v0, p5}, Lccsancom/mbridge/msdk/foundation/same/c/d;->a(Lccsancom/mbridge/msdk/foundation/same/c/d$a;)V

    .line 220
    return-object v0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/foundation/same/c/b;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 21
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/same/c/b;->d:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static a()V
    .locals 1

    .line 108
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/c/b;->a:Lccsancom/mbridge/msdk/foundation/same/c/b;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/c/b;->b()V

    .line 109
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLccsancom/mbridge/msdk/foundation/same/c/c;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/c/b;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 177
    invoke-virtual {v0, p6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object p6, p0, Lccsancom/mbridge/msdk/foundation/same/c/b;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p6, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-direct/range {p0 .. p5}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lccsancom/mbridge/msdk/foundation/same/c/d;

    move-result-object p1

    .line 180
    iget-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/c/b;->b:Lccsancom/mbridge/msdk/foundation/same/e/b;

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/foundation/same/e/b;->a(Lccsancom/mbridge/msdk/foundation/same/e/a;)V

    .line 181
    goto :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/c/b;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    .line 183
    if-eqz p1, :cond_1

    invoke-virtual {p1, p6}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 184
    invoke-virtual {p1, p6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/foundation/same/c/b;)Lccsanandroid/os/Handler;
    .locals 0

    .line 21
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/same/c/b;->e:Lccsanandroid/os/Handler;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lccsanandroid/graphics/Bitmap;
    .locals 1

    .line 83
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/c/b;->c:Lccsancom/mbridge/msdk/foundation/same/a/c;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lccsanandroid/graphics/Bitmap;
    .locals 4

    .line 118
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    return-object v1

    .line 121
    :cond_0
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->c(Ljava/lang/String;)Lccsanandroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 124
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->c(Ljava/lang/String;)Lccsanandroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 125
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/c/a;->a(Ljava/lang/String;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {p0, p1, v0}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V

    .line 129
    return-object v0

    .line 132
    :cond_2
    return-object v1
.end method

.method public final a(Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->c(Ljava/lang/String;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 78
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/c/b;->c:Lccsancom/mbridge/msdk/foundation/same/a/c;

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V
    .locals 7

    .line 112
    nop

    .line 113
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    nop

    .line 1154
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1157
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1158
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->c(Ljava/lang/String;)Lccsanandroid/graphics/Bitmap;

    move-result-object v1

    .line 1159
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1160
    invoke-interface {p2, v1, p1}, Lccsancom/mbridge/msdk/foundation/same/c/c;->onSuccessLoad(Lccsanandroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_2

    .line 1161
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1162
    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/same/c/a;->a(Ljava/lang/String;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 1163
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1164
    invoke-virtual {p0, p1, v0}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V

    .line 1165
    invoke-interface {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/c/c;->onSuccessLoad(Lccsanandroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 1167
    :cond_2
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLccsancom/mbridge/msdk/foundation/same/c/c;)V

    .line 1169
    :goto_0
    goto :goto_2

    .line 1170
    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLccsancom/mbridge/msdk/foundation/same/c/c;)V

    goto :goto_2

    .line 1155
    :cond_4
    :goto_1
    nop

    .line 115
    :goto_2
    return-void
.end method

.method public final b()V
    .locals 1

    .line 224
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/c/b;->c:Lccsancom/mbridge/msdk/foundation/same/a/c;

    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/same/a/c;->a()V

    .line 227
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    .line 136
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 137
    return v1

    .line 139
    :cond_0
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->c(Ljava/lang/String;)Lccsanandroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 142
    return v0

    .line 143
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 144
    return v0

    .line 146
    :cond_2
    return v1
.end method
