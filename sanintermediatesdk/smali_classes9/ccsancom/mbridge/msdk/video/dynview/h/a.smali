.class public Lccsancom/mbridge/msdk/video/dynview/h/a;
.super Ljava/lang/Object;
.source "BlurUtil.java"


# static fields
.field private static volatile a:Lccsancom/mbridge/msdk/video/dynview/h/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lccsancom/mbridge/msdk/video/dynview/h/a;->a:Lccsancom/mbridge/msdk/video/dynview/h/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Lccsanandroid/graphics/Bitmap;
    .locals 3

    .line 54
    nop

    .line 56
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lccsanandroid/graphics/Bitmap$Config;->ARGB_4444:Lccsanandroid/graphics/Bitmap$Config;

    const/16 v2, 0x64

    invoke-static {v2, v2, v1}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 57
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 58
    const-string p0, "#FF0000"

    invoke-static {p0}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lccsanandroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    .line 60
    :cond_0
    const-string p0, "#FFFFFF"

    invoke-static {p0}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lccsanandroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    goto :goto_1

    .line 62
    :catch_0
    move-exception p0

    .line 63
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 64
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static a()Lccsancom/mbridge/msdk/video/dynview/h/a;
    .locals 2

    .line 17
    sget-object v0, Lccsancom/mbridge/msdk/video/dynview/h/a;->a:Lccsancom/mbridge/msdk/video/dynview/h/a;

    if-nez v0, :cond_1

    .line 18
    const-class v0, Lccsancom/mbridge/msdk/video/dynview/h/a;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/video/dynview/h/a;->a:Lccsancom/mbridge/msdk/video/dynview/h/a;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lccsancom/mbridge/msdk/video/dynview/h/a;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/video/dynview/h/a;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/video/dynview/h/a;->a:Lccsancom/mbridge/msdk/video/dynview/h/a;

    .line 22
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lccsancom/mbridge/msdk/video/dynview/h/a;->a:Lccsancom/mbridge/msdk/video/dynview/h/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lccsanandroid/graphics/Bitmap;I)Lccsanandroid/graphics/Bitmap;
    .locals 4

    .line 30
    :try_start_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 31
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v1, Lccsanandroid/graphics/Bitmap$Config;->ARGB_4444:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v1}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object p2

    .line 32
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/renderscript/RenderScript;->create(Lccsanandroid/content/Context;)Lccsanandroid/renderscript/RenderScript;

    move-result-object v0

    .line 33
    invoke-static {v0}, Lccsanandroid/renderscript/Element;->U8_4(Lccsanandroid/renderscript/RenderScript;)Lccsanandroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/renderscript/ScriptIntrinsicBlur;->create(Lccsanandroid/renderscript/RenderScript;Lccsanandroid/renderscript/Element;)Lccsanandroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    .line 34
    invoke-static {v0, p1}, Lccsanandroid/renderscript/Allocation;->createFromBitmap(Lccsanandroid/renderscript/RenderScript;Lccsanandroid/graphics/Bitmap;)Lccsanandroid/renderscript/Allocation;

    move-result-object p1

    .line 35
    invoke-static {v0, p2}, Lccsanandroid/renderscript/Allocation;->createFromBitmap(Lccsanandroid/renderscript/RenderScript;Lccsanandroid/graphics/Bitmap;)Lccsanandroid/renderscript/Allocation;

    move-result-object v2

    .line 36
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v1, v3}, Lccsanandroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 37
    invoke-virtual {v1, p1}, Lccsanandroid/renderscript/ScriptIntrinsicBlur;->setInput(Lccsanandroid/renderscript/Allocation;)V

    .line 38
    invoke-virtual {v1, v2}, Lccsanandroid/renderscript/ScriptIntrinsicBlur;->forEach(Lccsanandroid/renderscript/Allocation;)V

    .line 39
    invoke-virtual {v2, p2}, Lccsanandroid/renderscript/Allocation;->copyTo(Lccsanandroid/graphics/Bitmap;)V

    .line 40
    invoke-virtual {v0}, Lccsanandroid/renderscript/RenderScript;->destroy()V

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p2}, Lccsancom/mbridge/msdk/video/dynview/h/a;->a(I)Lccsanandroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :goto_0
    return-object p2

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    const/4 p1, 0x0

    return-object p1
.end method
