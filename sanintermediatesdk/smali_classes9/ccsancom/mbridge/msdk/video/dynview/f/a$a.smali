.class public final Lccsancom/mbridge/msdk/video/dynview/f/a$a;
.super Ljava/lang/Object;
.source "BackgroundDrawable.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/dynview/f/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/dynview/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lccsanandroid/graphics/drawable/shapes/RectShape;

.field private b:Lccsanandroid/graphics/Bitmap;

.field private c:Lccsanandroid/graphics/Bitmap;

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/16 v0, 0x64

    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->e:I

    .line 175
    const/16 v0, 0xa

    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->f:I

    .line 180
    new-instance v0, Lccsanandroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Lccsanandroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->a:Lccsanandroid/graphics/drawable/shapes/RectShape;

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/video/dynview/f/a$1;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/dynview/f/a$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/dynview/f/a$a;)Lccsanandroid/graphics/drawable/shapes/RectShape;
    .locals 0

    .line 168
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->a:Lccsanandroid/graphics/drawable/shapes/RectShape;

    return-object p0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/video/dynview/f/a$a;)Lccsanandroid/graphics/Bitmap;
    .locals 0

    .line 168
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->b:Lccsanandroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/video/dynview/f/a$a;)Lccsanandroid/graphics/Bitmap;
    .locals 0

    .line 168
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->c:Lccsanandroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/video/dynview/f/a$a;)I
    .locals 0

    .line 168
    iget p0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->d:I

    return p0
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/video/dynview/f/a$a;)I
    .locals 0

    .line 168
    iget p0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->e:I

    return p0
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/video/dynview/f/a$a;)I
    .locals 0

    .line 168
    iget p0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->f:I

    return p0
.end method

.method static synthetic g(Lccsancom/mbridge/msdk/video/dynview/f/a$a;)F
    .locals 0

    .line 168
    iget p0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->g:F

    return p0
.end method

.method static synthetic h(Lccsancom/mbridge/msdk/video/dynview/f/a$a;)F
    .locals 0

    .line 168
    iget p0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->h:F

    return p0
.end method


# virtual methods
.method public final a(F)Lccsancom/mbridge/msdk/video/dynview/f/a$b;
    .locals 0

    .line 205
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->g:F

    .line 206
    return-object p0
.end method

.method public final a(I)Lccsancom/mbridge/msdk/video/dynview/f/a$b;
    .locals 0

    .line 198
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->d:I

    .line 199
    return-object p0
.end method

.method public final a(Lccsanandroid/graphics/Bitmap;)Lccsancom/mbridge/msdk/video/dynview/f/a$b;
    .locals 0

    .line 186
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->b:Lccsanandroid/graphics/Bitmap;

    .line 187
    return-object p0
.end method

.method public final a()Lccsancom/mbridge/msdk/video/dynview/f/a;
    .locals 2

    .line 230
    new-instance v0, Lccsancom/mbridge/msdk/video/dynview/f/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/mbridge/msdk/video/dynview/f/a;-><init>(Lccsancom/mbridge/msdk/video/dynview/f/a$a;Lccsancom/mbridge/msdk/video/dynview/f/a$1;)V

    return-object v0
.end method

.method public final b(F)Lccsancom/mbridge/msdk/video/dynview/f/a$b;
    .locals 0

    .line 211
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->h:F

    .line 212
    return-object p0
.end method

.method public final b(Lccsanandroid/graphics/Bitmap;)Lccsancom/mbridge/msdk/video/dynview/f/a$b;
    .locals 0

    .line 192
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->c:Lccsanandroid/graphics/Bitmap;

    .line 193
    return-object p0
.end method
