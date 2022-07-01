.class public Lccsancom/mbridge/msdk/out/BannerSize;
.super Ljava/lang/Object;
.source "BannerSize.java"


# static fields
.field public static final DEV_SET_TYPE:I = 0x5

.field public static final LARGE_TYPE:I = 0x1

.field public static final MEDIUM_TYPE:I = 0x2

.field public static final SMART_TYPE:I = 0x3

.field public static final STANDARD_TYPE:I = 0x4


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x140

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 32
    :pswitch_0
    iput p3, p0, Lccsancom/mbridge/msdk/out/BannerSize;->height:I

    .line 33
    iput p2, p0, Lccsancom/mbridge/msdk/out/BannerSize;->width:I

    goto :goto_0

    .line 25
    :pswitch_1
    const/16 p1, 0x32

    iput p1, p0, Lccsancom/mbridge/msdk/out/BannerSize;->height:I

    .line 26
    iput v0, p0, Lccsancom/mbridge/msdk/out/BannerSize;->width:I

    .line 27
    goto :goto_0

    .line 29
    :pswitch_2
    invoke-direct {p0}, Lccsancom/mbridge/msdk/out/BannerSize;->setSmartMode()V

    .line 30
    goto :goto_0

    .line 21
    :pswitch_3
    const/16 p1, 0xfa

    iput p1, p0, Lccsancom/mbridge/msdk/out/BannerSize;->height:I

    .line 22
    const/16 p1, 0x12c

    iput p1, p0, Lccsancom/mbridge/msdk/out/BannerSize;->width:I

    .line 23
    goto :goto_0

    .line 17
    :pswitch_4
    const/16 p1, 0x5a

    iput p1, p0, Lccsancom/mbridge/msdk/out/BannerSize;->height:I

    .line 18
    iput v0, p0, Lccsancom/mbridge/msdk/out/BannerSize;->width:I

    .line 19
    nop

    .line 36
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSmartMode()V
    .locals 2

    .line 39
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->i(Lccsanandroid/content/Context;)I

    move-result v0

    .line 40
    const/16 v1, 0x2d0

    if-ge v0, v1, :cond_0

    .line 41
    const/16 v0, 0x32

    iput v0, p0, Lccsancom/mbridge/msdk/out/BannerSize;->height:I

    .line 42
    const/16 v0, 0x140

    iput v0, p0, Lccsancom/mbridge/msdk/out/BannerSize;->width:I

    goto :goto_0

    .line 44
    :cond_0
    const/16 v0, 0x5a

    iput v0, p0, Lccsancom/mbridge/msdk/out/BannerSize;->height:I

    .line 45
    const/16 v0, 0x2d8

    iput v0, p0, Lccsancom/mbridge/msdk/out/BannerSize;->width:I

    .line 47
    :goto_0
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 53
    iget v0, p0, Lccsancom/mbridge/msdk/out/BannerSize;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 57
    iget v0, p0, Lccsancom/mbridge/msdk/out/BannerSize;->width:I

    return v0
.end method
