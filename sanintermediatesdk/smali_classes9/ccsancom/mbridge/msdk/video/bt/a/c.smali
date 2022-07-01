.class public final Lccsancom/mbridge/msdk/video/bt/a/c;
.super Ljava/lang/Object;
.source "OperateViews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/video/bt/a/c$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lccsanandroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/videocommon/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile g:I

.field private static h:I

.field private static i:I

.field private static j:Ljava/lang/String;

.field private static k:I

.field private static l:I

.field private static m:I

.field private static n:I

.field private static o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->b:Ljava/util/LinkedHashMap;

    .line 61
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->c:Ljava/util/LinkedHashMap;

    .line 62
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->d:Ljava/util/LinkedHashMap;

    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->e:Ljava/util/LinkedHashMap;

    .line 64
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->f:Ljava/util/LinkedHashMap;

    .line 67
    const/16 v0, 0x2710

    sput v0, Lccsancom/mbridge/msdk/video/bt/a/c;->g:I

    .line 69
    const/4 v0, 0x0

    sput v0, Lccsancom/mbridge/msdk/video/bt/a/c;->h:I

    .line 70
    const/4 v0, 0x1

    sput v0, Lccsancom/mbridge/msdk/video/bt/a/c;->i:I

    .line 72
    const-string v0, ""

    sput-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/video/bt/a/c$1;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/bt/a/c;-><init>()V

    return-void
.end method

.method private a(Lccsanandroid/view/ViewGroup$LayoutParams;Lccsanandroid/graphics/Rect;II)Lccsanandroid/view/ViewGroup$LayoutParams;
    .locals 4

    .line 572
    const/16 v0, -0x3e7

    if-nez p2, :cond_0

    .line 573
    new-instance p2, Lccsanandroid/graphics/Rect;

    invoke-direct {p2, v0, v0, v0, v0}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    .line 575
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    .line 576
    if-nez v1, :cond_1

    .line 577
    return-object p1

    .line 579
    :cond_1
    instance-of v2, p1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    if-eqz v2, :cond_8

    .line 580
    new-instance p1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 581
    iget v2, p2, Lccsanandroid/graphics/Rect;->left:I

    if-eq v2, v0, :cond_2

    .line 582
    iget v2, p2, Lccsanandroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    iput v2, p1, Lccsanandroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 584
    :cond_2
    iget v2, p2, Lccsanandroid/graphics/Rect;->top:I

    if-eq v2, v0, :cond_3

    .line 585
    iget v2, p2, Lccsanandroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    iput v2, p1, Lccsanandroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 587
    :cond_3
    iget v2, p2, Lccsanandroid/graphics/Rect;->right:I

    if-eq v2, v0, :cond_4

    .line 588
    iget v2, p2, Lccsanandroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    iput v2, p1, Lccsanandroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 590
    :cond_4
    iget v2, p2, Lccsanandroid/graphics/Rect;->bottom:I

    if-eq v2, v0, :cond_5

    .line 591
    iget p2, p2, Lccsanandroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result p2

    iput p2, p1, Lccsanandroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 593
    :cond_5
    if-lez p3, :cond_6

    .line 594
    int-to-float p2, p3

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result p2

    iput p2, p1, Lccsanandroid/widget/FrameLayout$LayoutParams;->width:I

    .line 596
    :cond_6
    if-lez p4, :cond_7

    .line 597
    int-to-float p2, p4

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result p2

    iput p2, p1, Lccsanandroid/widget/FrameLayout$LayoutParams;->height:I

    .line 599
    :cond_7
    return-object p1

    .line 601
    :cond_8
    instance-of v2, p1, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_f

    .line 602
    new-instance p1, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 603
    iget v2, p2, Lccsanandroid/graphics/Rect;->left:I

    if-eq v2, v0, :cond_9

    .line 604
    iget v2, p2, Lccsanandroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    iput v2, p1, Lccsanandroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 606
    :cond_9
    iget v2, p2, Lccsanandroid/graphics/Rect;->top:I

    if-eq v2, v0, :cond_a

    .line 607
    iget v2, p2, Lccsanandroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    iput v2, p1, Lccsanandroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 609
    :cond_a
    iget v2, p2, Lccsanandroid/graphics/Rect;->right:I

    if-eq v2, v0, :cond_b

    .line 610
    iget v2, p2, Lccsanandroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    iput v2, p1, Lccsanandroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 612
    :cond_b
    iget v2, p2, Lccsanandroid/graphics/Rect;->bottom:I

    if-eq v2, v0, :cond_c

    .line 613
    iget p2, p2, Lccsanandroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result p2

    iput p2, p1, Lccsanandroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 615
    :cond_c
    if-lez p3, :cond_d

    .line 616
    int-to-float p2, p3

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result p2

    iput p2, p1, Lccsanandroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 618
    :cond_d
    if-lez p4, :cond_e

    .line 619
    int-to-float p2, p4

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result p2

    iput p2, p1, Lccsanandroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 621
    :cond_e
    return-object p1

    .line 623
    :cond_f
    instance-of v2, p1, Lccsanandroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_16

    .line 624
    new-instance p1, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 625
    iget v2, p2, Lccsanandroid/graphics/Rect;->left:I

    if-eq v2, v0, :cond_10

    .line 626
    iget v2, p2, Lccsanandroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    iput v2, p1, Lccsanandroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 628
    :cond_10
    iget v2, p2, Lccsanandroid/graphics/Rect;->top:I

    if-eq v2, v0, :cond_11

    .line 629
    iget v2, p2, Lccsanandroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    iput v2, p1, Lccsanandroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 631
    :cond_11
    iget v2, p2, Lccsanandroid/graphics/Rect;->right:I

    if-eq v2, v0, :cond_12

    .line 632
    iget v2, p2, Lccsanandroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    iput v2, p1, Lccsanandroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 634
    :cond_12
    iget v2, p2, Lccsanandroid/graphics/Rect;->bottom:I

    if-eq v2, v0, :cond_13

    .line 635
    iget p2, p2, Lccsanandroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result p2

    iput p2, p1, Lccsanandroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 637
    :cond_13
    if-lez p3, :cond_14

    .line 638
    int-to-float p2, p3

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result p2

    iput p2, p1, Lccsanandroid/widget/LinearLayout$LayoutParams;->width:I

    .line 640
    :cond_14
    if-lez p4, :cond_15

    .line 641
    int-to-float p2, p4

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result p2

    iput p2, p1, Lccsanandroid/widget/LinearLayout$LayoutParams;->height:I

    .line 643
    :cond_15
    return-object p1

    .line 645
    :cond_16
    return-object p1
.end method

.method public static a()Lccsancom/mbridge/msdk/video/bt/a/c;
    .locals 1

    .line 83
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c$a;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/bt/a/c;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 56
    nop

    .line 3056
    sget-object p0, Lccsancom/mbridge/msdk/foundation/same/a/d;->d:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 3057
    const-string p0, "reward"

    invoke-static {p1, p2, p0}, Lccsancom/mbridge/msdk/foundation/same/a/d;->b(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 206
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 207
    const-string v1, "code"

    sget v2, Lccsancom/mbridge/msdk/video/bt/a/c;->h:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 208
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 209
    const-string v2, "id"

    invoke-virtual {v1, v2, p3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 210
    const-string p3, "data"

    invoke-virtual {v0, p3, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 211
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p3

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    goto :goto_0

    .line 212
    :catch_0
    move-exception p2

    .line 213
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OperateViews"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    return-void
.end method

.method static synthetic c()Ljava/util/LinkedHashMap;
    .locals 1

    .line 56
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->b:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method private c(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 168
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 169
    const-string v1, "code"

    sget v2, Lccsancom/mbridge/msdk/video/bt/a/c;->i:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 170
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 171
    const-string p2, "data"

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 172
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_0

    .line 173
    :catch_0
    move-exception p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OperateViews"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 100
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 103
    :cond_0
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 6

    .line 1631
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1632
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1633
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1634
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1635
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1636
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_0

    .line 1637
    iget-object v3, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1638
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 1641
    :cond_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1642
    if-nez p2, :cond_1

    .line 1643
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1644
    return-void

    .line 1646
    :cond_1
    invoke-virtual {p0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 1647
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1648
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/View;

    .line 1649
    instance-of v1, p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    if-eqz v1, :cond_3

    .line 1650
    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->playMute()Z

    move-result p2

    .line 1651
    if-eqz p2, :cond_2

    .line 1652
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1653
    const-string p2, "playerMute success"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1655
    :cond_2
    const-string p2, "set mute failed"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1656
    const-string p2, "playerMute failed set mute failed"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    :goto_0
    goto :goto_1

    .line 1659
    :cond_3
    const-string p2, "instanceId is not player"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1660
    const-string p2, "playerMute failed: instanceId is not player"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    :goto_1
    goto :goto_2

    .line 1663
    :cond_4
    const-string p2, "instanceId not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1664
    const-string p2, "playerMute failed: instanceId is not exist"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1669
    :goto_2
    goto :goto_3

    .line 1666
    :catchall_0
    move-exception p2

    .line 1667
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1668
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playerMute failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    :goto_3
    return-void
.end method

.method public final B(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 6

    .line 1674
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1675
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1676
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1677
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1678
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1679
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_0

    .line 1680
    iget-object v3, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1681
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 1684
    :cond_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1685
    if-nez p2, :cond_1

    .line 1686
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1687
    return-void

    .line 1689
    :cond_1
    invoke-virtual {p0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 1690
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1691
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/View;

    .line 1692
    instance-of v1, p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    if-eqz v1, :cond_3

    .line 1693
    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->playUnMute()Z

    move-result p2

    .line 1694
    if-eqz p2, :cond_2

    .line 1695
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1696
    const-string p2, "onUnmute"

    invoke-direct {p0, p1, p2, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    const-string p2, "playerUnmute successed"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1699
    :cond_2
    const-string p2, "set unmute failed"

    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1700
    const-string p2, "playerUnmute failed: set unmute failed"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    :goto_0
    goto :goto_1

    .line 1703
    :cond_3
    const-string p2, "instanceId is not player"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1704
    const-string p2, "playerUnmute failed: instanceId is not player"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    :goto_1
    goto :goto_2

    .line 1707
    :cond_4
    const-string p2, "instanceId not exit"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1708
    const-string p2, "playerUnmute failed: instanceId not exit"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1713
    :goto_2
    goto :goto_3

    .line 1710
    :catchall_0
    move-exception p2

    .line 1711
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1712
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playerUnmute failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    :goto_3
    return-void
.end method

.method public final C(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 8

    .line 1718
    const-string v0, "data"

    const-string v1, "id"

    const-string v2, "OperateViews"

    :try_start_0
    const-string v3, "unitId"

    invoke-virtual {p2, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1719
    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1720
    invoke-direct {p0, v4}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1721
    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1722
    move-object v6, p1

    check-cast v6, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1723
    iget-object v7, v6, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v7, :cond_0

    .line 1724
    iget-object v5, v6, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1725
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v5

    .line 1728
    :cond_0
    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1729
    if-nez p2, :cond_1

    .line 1730
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1731
    return-void

    .line 1733
    :cond_1
    invoke-virtual {p0, v3, v5}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 1734
    invoke-virtual {p2, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1735
    invoke-virtual {p2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/View;

    .line 1736
    instance-of v3, p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    if-eqz v3, :cond_2

    .line 1737
    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->getMute()I

    move-result p2

    .line 1738
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1739
    const-string v5, "code"

    sget v6, Lccsancom/mbridge/msdk/video/bt/a/c;->h:I

    invoke-virtual {v3, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1740
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1741
    invoke-virtual {v5, v1, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1742
    const-string v1, "mute"

    invoke-virtual {v5, v1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1743
    invoke-virtual {v3, v0, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1744
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    invoke-virtual {v3}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playerGetMuteState successed mute = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    goto :goto_0

    .line 1747
    :cond_2
    const-string p2, "instanceId is not player"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1748
    const-string p2, "playerGetMuteState failed instanceId is not player"

    invoke-static {v2, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    :goto_0
    goto :goto_1

    .line 1751
    :cond_3
    const-string p2, "instanceId not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1752
    const-string p2, "playerGetMuteState failed instanceId not exist"

    invoke-static {v2, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1757
    :goto_1
    goto :goto_2

    .line 1754
    :catchall_0
    move-exception p2

    .line 1755
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1756
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playerGetMuteState failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    :goto_2
    return-void
.end method

.method public final D(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 1

    .line 1762
    :try_start_0
    const-string v0, "unitId"

    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1763
    const-string v0, "data"

    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1764
    if-nez p2, :cond_0

    .line 1765
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1766
    return-void

    .line 1770
    :cond_0
    goto :goto_0

    .line 1768
    :catchall_0
    move-exception p2

    .line 1769
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1771
    :goto_0
    return-void
.end method

.method public final E(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 1

    .line 1775
    :try_start_0
    const-string v0, "unitId"

    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1776
    const-string v0, "id"

    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1777
    const-string v0, "data"

    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1778
    if-nez p2, :cond_0

    .line 1779
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1780
    return-void

    .line 1782
    :cond_0
    const-string p2, "android mediaPlayer not support setScaleType"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1785
    goto :goto_0

    .line 1783
    :catchall_0
    move-exception p2

    .line 1784
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1786
    :goto_0
    return-void
.end method

.method public final F(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 5

    .line 1790
    :try_start_0
    const-string v0, "unitId"

    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1791
    const-string v1, "id"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1792
    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1793
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1794
    move-object v3, p1

    check-cast v3, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1795
    iget-object v4, v3, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v4, :cond_0

    .line 1796
    iget-object v2, v3, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1797
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v2

    .line 1800
    :cond_0
    const-string v3, "data"

    invoke-virtual {p2, v3}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1801
    if-nez p2, :cond_1

    .line 1802
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1803
    return-void

    .line 1805
    :cond_1
    invoke-virtual {p0, v0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 1806
    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1807
    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/View;

    .line 1808
    instance-of v0, p2, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-eqz v0, :cond_2

    .line 1809
    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->preload()V

    .line 1810
    invoke-virtual {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1812
    :cond_2
    const-string p2, "view not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1814
    :goto_0
    goto :goto_1

    .line 1815
    :cond_3
    const-string p2, "instanceId not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1820
    :goto_1
    goto :goto_2

    .line 1817
    :catchall_0
    move-exception p2

    .line 1818
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1819
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "preloadSubPlayTemplateView failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OperateViews"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    :goto_2
    return-void
.end method

.method public final G(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 9

    .line 1825
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1826
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1827
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1828
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1829
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1830
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_0

    .line 1831
    iget-object v3, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1832
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 1835
    :cond_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1836
    if-nez p2, :cond_1

    .line 1837
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1838
    return-void

    .line 1840
    :cond_1
    invoke-virtual {p0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 1841
    const/4 v4, 0x0

    .line 1842
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 1843
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsanandroid/view/View;

    .line 1844
    instance-of v7, v6, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-eqz v7, :cond_2

    .line 1845
    move-object v4, v6

    check-cast v4, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 1846
    goto :goto_0

    .line 1848
    :cond_2
    instance-of v7, v6, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    if-eqz v7, :cond_3

    .line 1849
    check-cast v6, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->onDestory()V

    .line 1850
    goto :goto_0

    .line 1852
    :cond_3
    instance-of v7, v6, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    if-eqz v7, :cond_4

    .line 1853
    move-object v7, v6

    check-cast v7, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->getInstanceId()Ljava/lang/String;

    move-result-object v7

    .line 1854
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/a;->a()Lccsancom/mbridge/msdk/video/bt/a/a;

    move-result-object v8

    invoke-virtual {v8, v7}, Lccsancom/mbridge/msdk/video/bt/a/a;->a(Ljava/lang/String;)V

    .line 1855
    check-cast v6, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->onDestory()V

    .line 1856
    goto :goto_0

    .line 1858
    :cond_4
    instance-of v7, v6, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-eqz v7, :cond_5

    .line 1859
    check-cast v6, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->onDestroy()V

    .line 1860
    goto :goto_0

    .line 1862
    :cond_5
    goto :goto_0

    .line 1863
    :cond_6
    if-eqz v4, :cond_7

    .line 1864
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->onAdClose()V

    .line 1865
    sget-object v4, Lccsancom/mbridge/msdk/video/bt/a/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->clear()V

    .line 1867
    sget-object p2, Lccsancom/mbridge/msdk/video/bt/a/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1869
    return-void

    .line 1871
    :cond_7
    const-string p2, "not found MBridgeBTContainer"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1872
    const-string p2, "closeAd successed"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1874
    :cond_8
    const-string p2, "unitId or instanceId not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1875
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeAd failed: unitId or instanceId not exist unitId = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1880
    :goto_1
    goto :goto_2

    .line 1877
    :catchall_0
    move-exception p2

    .line 1878
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1879
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeAd failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    :goto_2
    return-void
.end method

.method public final H(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 5

    .line 1885
    :try_start_0
    move-object v0, p1

    check-cast v0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1886
    nop

    .line 1887
    iget-object v1, v0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 1888
    :try_start_1
    iget-object v0, v0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1889
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1887
    :cond_0
    move-object v0, v2

    .line 1891
    :goto_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1892
    const-string v3, "eventName"

    invoke-virtual {p2, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1893
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1894
    invoke-virtual {p0, v1, v0}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 1895
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1896
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 1897
    instance-of v4, v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    if-eqz v4, :cond_1

    .line 1898
    move-object v4, v1

    check-cast v4, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-virtual {v4, v3, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->broadcast(Ljava/lang/String;Lccsanorg/json/JSONObject;)V

    .line 1900
    :cond_1
    instance-of v4, v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    if-eqz v4, :cond_2

    .line 1901
    check-cast v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    invoke-virtual {v1, v3, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->broadcast(Ljava/lang/String;Lccsanorg/json/JSONObject;)V

    .line 1903
    :cond_2
    goto :goto_1

    .line 1904
    :cond_3
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1906
    :cond_4
    const-string p2, "unitId not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1911
    :goto_2
    goto :goto_3

    .line 1908
    :catchall_0
    move-exception p2

    .line 1909
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1910
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "broadcast failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OperateViews"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    :goto_3
    return-void
.end method

.method public final I(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 11

    .line 1916
    const-string v0, "id"

    const-string v1, "OperateViews"

    :try_start_0
    move-object v2, p1

    check-cast v2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1917
    nop

    .line 1918
    iget-object v3, v2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, ""

    if-eqz v3, :cond_0

    .line 1919
    :try_start_1
    iget-object v2, v2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1920
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1918
    :cond_0
    move-object v2, v4

    .line 1922
    :goto_0
    const-string v3, "unitId"

    invoke-virtual {p2, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1923
    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1924
    const-string v6, "data"

    invoke-virtual {p2, v6}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1925
    const-string v6, "userId"

    invoke-virtual {p2, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1926
    const-string v7, "expired"

    invoke-virtual {p2, v7}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 1927
    const-string v8, "reward"

    invoke-virtual {p2, v8}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v8

    .line 1928
    const-string v9, "extra"

    invoke-virtual {p2, v9}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1929
    const/4 v9, 0x0

    .line 1930
    nop

    .line 1931
    if-eqz v8, :cond_1

    .line 1932
    new-instance v9, Lccsancom/mbridge/msdk/videocommon/b/c;

    const-string v4, "name"

    invoke-virtual {v8, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "amount"

    invoke-virtual {v8, v10}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v4, v10}, Lccsancom/mbridge/msdk/videocommon/b/c;-><init>(Ljava/lang/String;I)V

    .line 1933
    invoke-virtual {v8, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1935
    :cond_1
    invoke-virtual {p0, v3, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 1936
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_4

    sget-object v2, Lccsancom/mbridge/msdk/video/bt/a/c;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1937
    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    .line 1938
    instance-of v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-eqz v2, :cond_3

    .line 1939
    check-cast v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 1940
    invoke-virtual {v0, v9}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setReward(Lccsancom/mbridge/msdk/videocommon/b/c;)V

    .line 1941
    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setUserId(Ljava/lang/String;)V

    .line 1942
    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setRewardId(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {v0, v7}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setCampaignExpired(Z)V

    .line 1944
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1945
    invoke-virtual {v0, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setDeveloperExtraData(Ljava/lang/String;)V

    .line 1947
    :cond_2
    invoke-virtual {p0, p1, v5}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1948
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSubPlayTemplateInfo success instanceId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    goto :goto_1

    .line 1950
    :cond_3
    const-string p2, "instanceId not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1951
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSubPlayTemplateInfo failed: instanceId not exist instanceId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    :goto_1
    goto :goto_2

    .line 1954
    :cond_4
    const-string p2, "unitId not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1955
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSubPlayTemplateInfo failed: unitId not exist instanceId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1960
    :goto_2
    goto :goto_3

    .line 1957
    :catchall_0
    move-exception p2

    .line 1958
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1959
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSubPlayTemplateInfo failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    :goto_3
    return-void
.end method

.method public final J(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 8

    .line 1965
    const-string v0, "OperateViews"

    :try_start_0
    move-object v1, p1

    check-cast v1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1966
    const-string v2, ""

    .line 1967
    iget-object v3, v1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v3, :cond_0

    .line 1968
    iget-object v1, v1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1969
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v2

    .line 1971
    :cond_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1972
    const-string v3, "id"

    invoke-virtual {p2, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1973
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1974
    const-string v4, "eventName"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1975
    const-string v5, "eventData"

    invoke-virtual {p2, v5}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1976
    if-nez p2, :cond_1

    .line 1977
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1979
    :cond_1
    invoke-virtual {p0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 1980
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 1981
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 1982
    instance-of v2, v1, Lccsanandroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 1983
    check-cast v1, Lccsanandroid/view/ViewGroup;

    .line 1984
    invoke-virtual {v1}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1985
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_3

    .line 1986
    invoke-virtual {v1, v5}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v6

    .line 1987
    instance-of v7, v6, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v7, :cond_2

    .line 1988
    check-cast v6, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1989
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v1

    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v2, 0x2

    invoke-static {p2, v2}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v6, v4, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    invoke-virtual {p0, p1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1991
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webviewFireEvent instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    return-void

    .line 1985
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1996
    :cond_3
    const-string p2, "instanceId not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1997
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webviewFireEvent failed: instanceId not exist instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    goto :goto_1

    .line 1999
    :cond_4
    const-string p2, "unitId not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    const-string p2, "webviewFireEvent failed: unitId not exist"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2005
    :goto_1
    goto :goto_2

    .line 2002
    :catchall_0
    move-exception p2

    .line 2003
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2004
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webviewFireEvent failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    :goto_2
    return-void
.end method

.method public final K(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 2

    .line 2010
    :try_start_0
    const-string v0, "data"

    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 2011
    if-nez p2, :cond_0

    .line 2012
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2013
    return-void

    .line 2015
    :cond_0
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p2

    .line 2016
    if-nez p2, :cond_1

    .line 2017
    const-string p2, "data camapign is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2018
    return-void

    .line 2020
    :cond_1
    nop

    .line 3028
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lccsancom/mbridge/msdk/video/bt/a/c$2;

    invoke-direct {v1, p0, p2}, Lccsancom/mbridge/msdk/video/bt/a/c$2;-><init>(Lccsancom/mbridge/msdk/video/bt/a/c;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3052
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2021
    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2024
    goto :goto_0

    .line 2022
    :catchall_0
    move-exception p2

    .line 2023
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2025
    :goto_0
    return-void
.end method

.method public final L(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 19

    .line 2062
    move-object/from16 v1, p1

    move-object/from16 v0, p2

    const-string v2, "resource"

    const-string v3, "type"

    const-string v4, ""

    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5}, Lccsanorg/json/JSONObject;-><init>()V

    .line 2063
    const-string v6, "message"

    const-string v7, "code"

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-string v10, "OperateViews"

    if-nez v0, :cond_0

    .line 2065
    :try_start_0
    invoke-virtual {v5, v7, v9}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2066
    const-string v0, "params is null"

    invoke-virtual {v5, v6, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2067
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    invoke-virtual {v5}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v8}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2070
    goto :goto_0

    .line 2068
    :catch_0
    move-exception v0

    .line 2069
    invoke-virtual {v0}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    :goto_0
    return-void

    .line 2074
    :cond_0
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v5, v7, v11}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2075
    invoke-virtual {v5, v6, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2076
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v12

    .line 2077
    if-eqz v12, :cond_d

    invoke-virtual {v12}, Lccsanorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 2079
    new-instance v13, Lccsanorg/json/JSONArray;

    invoke-direct {v13}, Lccsanorg/json/JSONArray;-><init>()V

    .line 2080
    invoke-virtual {v12}, Lccsanorg/json/JSONArray;->length()I

    move-result v14

    .line 2081
    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_c

    .line 2082
    invoke-virtual {v12, v15}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 2083
    const-string v8, "ref"

    invoke-virtual {v0, v8, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2084
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2085
    new-instance v11, Lccsanorg/json/JSONObject;

    invoke-direct {v11}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 2086
    move-object/from16 p2, v12

    const-string v12, "path"

    if-ne v0, v9, :cond_4

    :try_start_2
    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 2087
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 2088
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lccsancom/mbridge/msdk/foundation/db/o;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/o;

    move-result-object v9

    invoke-virtual {v9, v8}, Lccsancom/mbridge/msdk/foundation/db/o;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/l;

    move-result-object v9

    .line 2089
    if-eqz v9, :cond_3

    .line 2090
    move/from16 v16, v14

    const-string v14, "VideoBean not null"

    invoke-static {v10, v14}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    const/4 v14, 0x1

    invoke-virtual {v0, v3, v14}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2092
    const-string v14, "videoDataLength"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object/from16 v17, v6

    :try_start_3
    invoke-virtual {v9}, Lccsancom/mbridge/msdk/foundation/entity/l;->c()I

    move-result v6

    invoke-virtual {v0, v14, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2093
    invoke-virtual {v9}, Lccsancom/mbridge/msdk/foundation/entity/l;->e()Ljava/lang/String;

    move-result-object v6

    .line 2094
    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v18, v7

    const-string v7, "path4Web"

    if-eqz v14, :cond_1

    .line 2095
    :try_start_4
    const-string v6, "VideoPath null"

    invoke-static {v10, v6}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    invoke-virtual {v0, v12, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2097
    invoke-virtual {v0, v7, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_2

    .line 2099
    :cond_1
    const-string v14, "VideoPath not null"

    invoke-static {v10, v14}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    invoke-virtual {v0, v12, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2101
    invoke-virtual {v0, v7, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2103
    :goto_2
    invoke-virtual {v9}, Lccsancom/mbridge/msdk/foundation/entity/l;->d()I

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v7, 0x5

    const-string v9, "downloaded"

    if-ne v6, v7, :cond_2

    .line 2104
    const/4 v6, 0x1

    :try_start_5
    invoke-virtual {v0, v9, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    const/4 v6, 0x0

    goto :goto_3

    .line 2106
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v0, v9, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2108
    :goto_3
    invoke-virtual {v11, v8, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2109
    invoke-virtual {v13, v11}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 2110
    goto :goto_4

    .line 2156
    :catchall_0
    move-exception v0

    move-object v2, v7

    goto/16 :goto_b

    .line 2111
    :cond_3
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v16, v14

    const/4 v6, 0x0

    const-string v0, "VideoBean null"

    invoke-static {v10, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    :goto_4
    goto/16 :goto_a

    .line 2086
    :cond_4
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v16, v14

    const/4 v6, 0x0

    .line 2113
    const/4 v7, 0x2

    if-ne v0, v7, :cond_6

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2114
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 2115
    const/4 v7, 0x2

    invoke-virtual {v0, v3, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2116
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v7

    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    move-object v7, v4

    goto :goto_5

    :cond_5
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v7

    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-virtual {v0, v12, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2117
    invoke-virtual {v11, v8, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2118
    invoke-virtual {v13, v11}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 2119
    goto/16 :goto_a

    :cond_6
    const/4 v7, 0x3

    if-ne v0, v7, :cond_9

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v9, :cond_9

    .line 2120
    nop

    .line 2122
    :try_start_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2123
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFileInfo Mraid file "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file:////"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    .line 2131
    :cond_7
    move-object v0, v4

    :goto_6
    goto :goto_7

    .line 2127
    :catchall_1
    move-exception v0

    .line 2128
    :try_start_7
    sget-boolean v9, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v9, :cond_8

    .line 2129
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2132
    :cond_8
    move-object v0, v4

    :goto_7
    new-instance v9, Lccsanorg/json/JSONObject;

    invoke-direct {v9}, Lccsanorg/json/JSONObject;-><init>()V

    .line 2133
    invoke-virtual {v9, v3, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2134
    invoke-virtual {v9, v12, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2135
    invoke-virtual {v11, v8, v9}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2136
    invoke-virtual {v13, v11}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    goto :goto_9

    .line 2137
    :cond_9
    const/4 v7, 0x4

    if-ne v0, v7, :cond_b

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2138
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 2139
    invoke-virtual {v0, v3, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2140
    invoke-static {v8}, Lccsancom/mbridge/msdk/foundation/tools/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a

    move-object v7, v4

    goto :goto_8

    :cond_a
    invoke-static {v8}, Lccsancom/mbridge/msdk/foundation/tools/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_8
    invoke-virtual {v0, v12, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2141
    invoke-virtual {v11, v8, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2142
    invoke-virtual {v13, v11}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    goto :goto_a

    .line 2137
    :cond_b
    :goto_9
    nop

    .line 2081
    :goto_a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v12, p2

    move/from16 v14, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v11, 0x0

    goto/16 :goto_1

    .line 2145
    :cond_c
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-virtual {v5, v2, v13}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2146
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    invoke-virtual {v5}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2147
    goto :goto_d

    .line 2156
    :catchall_2
    move-exception v0

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    goto :goto_e

    .line 2077
    :cond_d
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .line 2149
    move-object/from16 v2, v18

    const/4 v3, 0x1

    :try_start_8
    invoke-virtual {v5, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2150
    const-string v0, "resource is null"
    :try_end_8
    .catch Lccsanorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v3, v17

    :try_start_9
    invoke-virtual {v5, v3, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2151
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    invoke-virtual {v5}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v6, 0x2

    invoke-static {v4, v6}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_9
    .catch Lccsanorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 2154
    goto :goto_d

    .line 2152
    :catch_1
    move-exception v0

    goto :goto_c

    .line 2156
    :catchall_3
    move-exception v0

    :goto_b
    move-object/from16 v3, v17

    goto :goto_e

    .line 2152
    :catch_2
    move-exception v0

    move-object/from16 v3, v17

    .line 2153
    :goto_c
    :try_start_a
    invoke-virtual {v0}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 2164
    :goto_d
    goto :goto_f

    .line 2156
    :catchall_4
    move-exception v0

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object v3, v6

    move-object v2, v7

    .line 2158
    :goto_e
    const/4 v4, 0x1

    :try_start_b
    invoke-virtual {v5, v2, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2159
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2160
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    invoke-virtual {v5}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b
    .catch Lccsanorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_3

    .line 2163
    goto :goto_f

    .line 2161
    :catch_3
    move-exception v0

    .line 2162
    invoke-virtual {v0}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    :goto_f
    return-void
.end method

.method public final M(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 7

    .line 2186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createNativeEC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OperateViews"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    :try_start_0
    const-string v0, "unitId"

    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2189
    const-string v2, "data"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 2190
    if-eqz p2, :cond_5

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 2194
    :cond_0
    const-string v2, ""

    .line 2195
    const-string v3, "campaign"

    invoke-virtual {p2, v3}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v3

    .line 2196
    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v3

    .line 2197
    if-eqz v3, :cond_1

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2198
    invoke-virtual {v3, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 2199
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    .line 2201
    :cond_1
    const-string v4, "unitSetting"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 2202
    invoke-static {p2}, Lccsancom/mbridge/msdk/videocommon/d/c;->a(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object p2

    .line 2203
    if-eqz p2, :cond_2

    .line 2204
    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/videocommon/d/c;->a(Ljava/lang/String;)V

    .line 2206
    :cond_2
    new-instance v4, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;-><init>(Lccsanandroid/content/Context;)V

    .line 2207
    invoke-virtual {v4, v3}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->setCampaign(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 2208
    new-instance v5, Lccsancom/mbridge/msdk/video/signal/a/j;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v3}, Lccsancom/mbridge/msdk/video/signal/a/j;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 2209
    invoke-virtual {v5, v0}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Ljava/lang/String;)V

    .line 2210
    invoke-virtual {v4, v5}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->setJSCommon(Lccsancom/mbridge/msdk/video/signal/a/j;)V

    .line 2211
    invoke-virtual {v4, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->setUnitId(Ljava/lang/String;)V

    .line 2212
    invoke-virtual {v4, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->setRewardUnitSetting(Lccsancom/mbridge/msdk/videocommon/d/c;)V

    .line 2213
    move-object p2, p1

    check-cast p2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 2214
    iget-object v5, p2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_3

    .line 2215
    iget-object p2, p2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 2216
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v2

    .line 2217
    invoke-virtual {v4, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->setCreateWebView(Lccsanandroid/webkit/WebView;)V

    .line 2219
    :cond_3
    invoke-virtual {p0, v0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 2220
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/a/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 2221
    sget-object v5, Lccsancom/mbridge/msdk/video/bt/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2222
    invoke-virtual {v4, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->setInstanceId(Ljava/lang/String;)V

    .line 2223
    invoke-virtual {p2, v0, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2224
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->preLoadData()V

    .line 2225
    if-nez v3, :cond_4

    .line 2226
    const-string p2, "campaign is null"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2227
    const-string p2, "createNativeEC failed"

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2229
    :cond_4
    invoke-virtual {p0, p1, v0}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2230
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNativeEC instanceId = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    :goto_0
    goto :goto_2

    .line 2191
    :cond_5
    :goto_1
    const-string p2, "unitId or data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2192
    return-void

    .line 2232
    :catchall_0
    move-exception p2

    .line 2233
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createNativeEC failed\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    :goto_2
    return-void
.end method

.method public final a(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 1

    .line 93
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p1

    .line 96
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(IIIII)V
    .locals 4

    .line 2239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperateViews setNotchString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "%1$s-%2$s-%3$s-%4$s-%5$s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OperateViews"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    invoke-static {p1, p2, p3, p4, p5}, Lccsancom/mbridge/msdk/foundation/tools/h;->a(IIIII)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->j:Ljava/lang/String;

    .line 2241
    sput p1, Lccsancom/mbridge/msdk/video/bt/a/c;->k:I

    .line 2242
    sput p2, Lccsancom/mbridge/msdk/video/bt/a/c;->l:I

    .line 2243
    sput p3, Lccsancom/mbridge/msdk/video/bt/a/c;->m:I

    .line 2244
    sput p4, Lccsancom/mbridge/msdk/video/bt/a/c;->n:I

    .line 2245
    sput p5, Lccsancom/mbridge/msdk/video/bt/a/c;->o:I

    .line 2246
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 180
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 181
    const-string v1, "code"

    sget v2, Lccsancom/mbridge/msdk/video/bt/a/c;->i:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 182
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 183
    const-string p2, "data"

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 184
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 185
    :catch_0
    move-exception p1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OperateViews"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 220
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 221
    const-string v1, "code"

    sget v2, Lccsancom/mbridge/msdk/video/bt/a/c;->h:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 222
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 223
    const-string v2, "id"

    invoke-virtual {v1, v2, p3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 224
    const-string p3, "data"

    invoke-virtual {v0, p3, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 225
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p3

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    goto :goto_0

    .line 226
    :catch_0
    move-exception p2

    .line 227
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OperateViews"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 192
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 193
    const-string v1, "code"

    sget v2, Lccsancom/mbridge/msdk/video/bt/a/c;->h:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 194
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 195
    const-string v2, "id"

    invoke-virtual {v1, v2, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 196
    const-string p2, "data"

    invoke-virtual {v0, p2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 197
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_0

    .line 198
    :catch_0
    move-exception p2

    .line 199
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OperateViews"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 11

    .line 234
    :try_start_0
    const-string v0, "unitId"

    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 235
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const-string p2, "unitId is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    return-void

    .line 239
    :cond_0
    const-string v0, "data"

    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 240
    const-string v0, "delay"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 241
    const-string v2, "fileURL"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 242
    const-string v2, "filePath"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 243
    const-string v2, "html"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 244
    const-string v2, "rect"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 245
    new-instance v2, Lccsanandroid/graphics/Rect;

    const/16 v3, -0x3e7

    invoke-direct {v2, v3, v3, v3, v3}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    .line 246
    nop

    .line 247
    nop

    .line 248
    if-eqz p2, :cond_1

    .line 249
    new-instance v1, Lccsanandroid/graphics/Rect;

    const-string v2, "left"

    invoke-virtual {p2, v2, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v8, "top"

    invoke-virtual {p2, v8, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "right"

    invoke-virtual {p2, v9, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "bottom"

    invoke-virtual {p2, v10, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v1, v2, v8, v9, v3}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    .line 250
    const-string v2, "width"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 251
    const-string v3, "height"

    invoke-virtual {p2, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    move v10, p2

    move-object v8, v1

    move v9, v2

    goto :goto_0

    .line 248
    :cond_1
    move-object v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 254
    :goto_0
    nop

    .line 255
    nop

    .line 256
    nop

    .line 257
    new-instance p2, Lccsancom/mbridge/msdk/video/bt/a/c$1;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v10}, Lccsancom/mbridge/msdk/video/bt/a/c$1;-><init>(Lccsancom/mbridge/msdk/video/bt/a/c;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/graphics/Rect;II)V

    .line 290
    new-instance v1, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    int-to-long v2, v0

    invoke-virtual {v1, p2, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    goto :goto_1

    .line 291
    :catchall_0
    move-exception p2

    .line 292
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createWebview failed\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OperateViews"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    .line 125
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->f:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 107
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public final b(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/d/c;
    .locals 1

    .line 111
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/videocommon/d/c;

    return-object p1

    .line 114
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 87
    sget v0, Lccsancom/mbridge/msdk/video/bt/a/c;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lccsancom/mbridge/msdk/video/bt/a/c;->g:I

    .line 88
    sget v0, Lccsancom/mbridge/msdk/video/bt/a/c;->g:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    return-object v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 157
    :try_start_0
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 160
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 161
    sget-object v1, Lccsancom/mbridge/msdk/video/bt/a/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    monitor-exit p0

    return-object v0

    .line 156
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 12

    .line 2168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportUrls:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OperateViews"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2169
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2171
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2172
    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2173
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v3

    .line 2174
    const-string v4, "type"

    invoke-virtual {v3, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 2175
    const-string v5, "url"

    invoke-virtual {v3, v5}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2176
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, ""

    const/4 v10, 0x0

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    invoke-static/range {v6 .. v11}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2178
    :cond_1
    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2181
    goto :goto_2

    .line 2179
    :catchall_0
    move-exception p1

    .line 2180
    const-string p2, "reportUrls"

    invoke-static {v1, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2183
    :cond_2
    :goto_2
    return-void
.end method

.method public final b(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 9

    .line 299
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    const-string v2, "data"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 301
    if-eqz p2, :cond_4

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 305
    :cond_0
    const-string v2, ""

    .line 306
    const-string v3, "campaign"

    invoke-virtual {p2, v3}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v3

    .line 307
    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v3

    .line 308
    if-eqz v3, :cond_1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 309
    invoke-virtual {v3, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    .line 312
    :cond_1
    const-string v4, "show_time"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 313
    const-string v6, "show_mute"

    invoke-virtual {p2, v6, v5}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 314
    const-string v7, "show_close"

    invoke-virtual {p2, v7, v5}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 315
    const-string v7, "orientation"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    .line 316
    new-instance v7, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v8

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;-><init>(Lccsanandroid/content/Context;)V

    .line 317
    invoke-virtual {v7, v3}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setCampaign(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 318
    invoke-virtual {v7, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setUnitId(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v7, v6}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setShowMute(I)V

    .line 320
    invoke-virtual {v7, v4}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setShowTime(I)V

    .line 321
    invoke-virtual {v7, v5}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setShowClose(I)V

    .line 322
    invoke-virtual {v7, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setOrientation(I)V

    .line 323
    move-object p2, p1

    check-cast p2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 324
    iget-object v4, p2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v4, :cond_2

    .line 325
    iget-object p2, p2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 326
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-virtual {v7, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setCreateWebView(Lccsanandroid/webkit/WebView;)V

    .line 329
    :cond_2
    invoke-virtual {p0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 330
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 331
    sget-object v4, Lccsancom/mbridge/msdk/video/bt/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-virtual {v7, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setInstanceId(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2, v1, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-virtual {v7}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->preLoadData()V

    .line 335
    if-nez v3, :cond_3

    .line 336
    const-string p2, "campaign is null"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    const-string p2, "createPlayerView failed"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_3
    invoke-virtual {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPlayerView instanceId = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/a;->a()Lccsancom/mbridge/msdk/video/bt/a/a;

    move-result-object p2

    invoke-virtual {p2, v1, v7}, Lccsancom/mbridge/msdk/video/bt/a/a;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)V

    .line 346
    goto :goto_2

    .line 302
    :cond_4
    :goto_1
    const-string p2, "unitId or data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    return-void

    .line 343
    :catchall_0
    move-exception p2

    .line 344
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createPlayerView failed\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :goto_2
    return-void
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 118
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 121
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final c(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 13

    .line 351
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 352
    const-string v2, "data"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 353
    if-eqz p2, :cond_8

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 357
    :cond_0
    const-string v2, "mute"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 358
    const-string v3, ""

    .line 359
    const-string v4, "campaign"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v4

    .line 360
    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v4

    .line 361
    if-eqz v4, :cond_1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 362
    invoke-virtual {v4, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    .line 365
    :cond_1
    const-string v5, "unitSetting"

    invoke-virtual {p2, v5}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v5

    .line 366
    invoke-static {v5}, Lccsancom/mbridge/msdk/videocommon/d/c;->a(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v5

    .line 367
    if-eqz v5, :cond_2

    .line 368
    invoke-virtual {v5, v1}, Lccsancom/mbridge/msdk/videocommon/d/c;->a(Ljava/lang/String;)V

    .line 370
    :cond_2
    const-string v6, "userId"

    invoke-virtual {p2, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 371
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 372
    move-object v7, p1

    check-cast v7, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 373
    iget-object v8, v7, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v8, :cond_3

    .line 374
    iget-object v3, v7, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 375
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 378
    :cond_3
    invoke-virtual {p0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v7

    .line 379
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/a/c;->b()Ljava/lang/String;

    move-result-object v8

    .line 380
    sget-object v9, Lccsancom/mbridge/msdk/video/bt/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    new-instance v3, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v9

    invoke-virtual {v9}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v9

    invoke-direct {v3, v9}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;-><init>(Lccsanandroid/content/Context;)V

    .line 382
    invoke-virtual {v3, v8}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setInstanceId(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v3, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setUnitId(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setCampaign(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 385
    invoke-virtual {v3, v5}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setRewardUnitSetting(Lccsancom/mbridge/msdk/videocommon/d/c;)V

    .line 386
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setBigOffer(Z)V

    .line 387
    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 388
    invoke-virtual {v3, v6}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setUserId(Ljava/lang/String;)V

    .line 390
    :cond_4
    const-string v6, "reward"

    invoke-virtual {p2, v6}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v6

    .line 391
    if-eqz v6, :cond_6

    .line 392
    const-string v9, "id"

    invoke-virtual {v6, v9}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 393
    new-instance v10, Lccsancom/mbridge/msdk/videocommon/b/c;

    const-string v11, "name"

    invoke-virtual {v6, v11}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "amount"

    invoke-virtual {v6, v12}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v10, v11, v6}, Lccsancom/mbridge/msdk/videocommon/b/c;-><init>(Ljava/lang/String;I)V

    .line 394
    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 395
    invoke-virtual {v3, v9}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setRewardId(Ljava/lang/String;)V

    .line 397
    :cond_5
    invoke-virtual {v10}, Lccsancom/mbridge/msdk/videocommon/b/c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 398
    invoke-virtual {v3, v10}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setReward(Lccsancom/mbridge/msdk/videocommon/b/c;)V

    .line 401
    :cond_6
    const-string v6, "extra"

    invoke-virtual {p2, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 402
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 403
    invoke-virtual {v3, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setDeveloperExtraData(Ljava/lang/String;)V

    .line 405
    :cond_7
    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setMute(I)V

    .line 406
    invoke-virtual {v7, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object p2, Lccsancom/mbridge/msdk/video/bt/a/c;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v8, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object p2, Lccsancom/mbridge/msdk/video/bt/a/c;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v8, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object p2, Lccsancom/mbridge/msdk/video/bt/a/c;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v8, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-virtual {p0, p1, v8}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSubPlayTemplateView instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    goto :goto_1

    .line 354
    :cond_8
    :goto_0
    const-string p2, "unitId or data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    return-void

    .line 412
    :catchall_0
    move-exception p2

    .line 413
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSubPlayTemplateView failed\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :goto_1
    return-void
.end method

.method public final d(Ljava/lang/String;)I
    .locals 1

    .line 129
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 132
    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public final d(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 9

    .line 420
    const-string v0, "destroyComponent failed"

    const-string v1, "OperateViews"

    :try_start_0
    const-string v2, "unitId"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 421
    const-string v3, "id"

    invoke-virtual {p2, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 422
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 423
    if-eqz p2, :cond_b

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_3

    .line 427
    :cond_0
    invoke-direct {p0, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 428
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 429
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 430
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_1

    .line 431
    iget-object p2, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 432
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object p2

    .line 435
    :cond_1
    invoke-virtual {p0, v2, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 436
    if-eqz p2, :cond_a

    invoke-virtual {p2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 437
    invoke-virtual {p2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/view/View;

    .line 438
    invoke-virtual {p2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 440
    invoke-virtual {v2}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lccsanandroid/view/ViewGroup;

    .line 441
    if-eqz v4, :cond_2

    .line 442
    invoke-virtual {v4, v2}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 444
    :cond_2
    instance-of v4, v2, Lccsanandroid/view/ViewGroup;

    if-eqz v4, :cond_6

    .line 445
    move-object v4, v2

    check-cast v4, Lccsanandroid/view/ViewGroup;

    .line 446
    invoke-virtual {v4}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_6

    .line 447
    invoke-virtual {v4}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 448
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_6

    .line 449
    invoke-virtual {v4, v6}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v7

    .line 450
    instance-of v8, v7, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    if-eqz v8, :cond_3

    .line 451
    move-object v8, v7

    check-cast v8, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->getInstanceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    check-cast v7, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->onDestory()V

    .line 453
    goto :goto_1

    .line 455
    :cond_3
    instance-of v8, v7, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    if-eqz v8, :cond_4

    .line 456
    move-object v8, v7

    check-cast v8, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->getInstanceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    check-cast v7, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->onDestory()V

    .line 458
    goto :goto_1

    .line 460
    :cond_4
    instance-of v8, v7, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-eqz v8, :cond_5

    .line 461
    move-object v8, v7

    check-cast v8, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getInstanceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    check-cast v7, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->onDestroy()V

    .line 448
    :cond_5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 468
    :cond_6
    instance-of p2, v2, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-eqz p2, :cond_7

    .line 469
    move-object p2, v2

    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->onDestroy()V

    .line 471
    :cond_7
    instance-of p2, v2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    if-eqz p2, :cond_8

    .line 472
    move-object p2, v2

    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->onDestory()V

    .line 474
    :cond_8
    instance-of p2, v2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    if-eqz p2, :cond_9

    .line 475
    check-cast v2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->onDestory()V

    .line 477
    :cond_9
    invoke-virtual {p0, p1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    const-string p2, "onComponentDestroy"

    invoke-direct {p0, p1, p2, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyComponent instanceId = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    goto :goto_2

    .line 481
    :cond_a
    const-string p2, "unitId or instanceId not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :goto_2
    goto :goto_4

    .line 424
    :cond_b
    :goto_3
    const-string p2, "unidId or data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    return-void

    .line 484
    :catchall_0
    move-exception p2

    .line 485
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :goto_4
    return-void
.end method

.method public final e(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 2

    .line 492
    :try_start_0
    const-string v0, "unitId"

    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 493
    const-string v0, "id"

    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    const-string v1, "data"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 495
    if-nez p2, :cond_0

    .line 496
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    return-void

    .line 499
    :cond_0
    invoke-virtual {p0, p1, v0}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    goto :goto_0

    .line 500
    :catchall_0
    move-exception p2

    .line 501
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    :goto_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    .line 136
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_1
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_2
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_3
    return-void
.end method

.method public final f(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 8

    .line 507
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 509
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 510
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 511
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 512
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_0

    .line 513
    iget-object v3, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 514
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 517
    :cond_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 518
    if-nez p2, :cond_1

    .line 519
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    return-void

    .line 522
    :cond_1
    const-string v4, "rect"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 523
    if-nez p2, :cond_2

    .line 524
    const-string p2, "rect not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    return-void

    .line 528
    :cond_2
    invoke-virtual {p0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 530
    const-string v3, "left"

    const/16 v4, -0x3e7

    invoke-virtual {p2, v3, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 531
    const-string v5, "top"

    invoke-virtual {p2, v5, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 532
    const-string v6, "right"

    invoke-virtual {p2, v6, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 533
    const-string v7, "bottom"

    invoke-virtual {p2, v7, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 534
    new-instance v7, Lccsanandroid/graphics/Rect;

    invoke-direct {v7, v3, v5, v6, v4}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    .line 535
    const-string v3, "width"

    invoke-virtual {p2, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 536
    const-string v4, "height"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 537
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 538
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 539
    if-eqz v1, :cond_6

    .line 540
    invoke-virtual {v1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 541
    invoke-virtual {v1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 542
    invoke-direct {p0, v4, v7, v3, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Lccsanandroid/view/ViewGroup$LayoutParams;Lccsanandroid/graphics/Rect;II)Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {v1, p2}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 543
    invoke-virtual {v1}, Lccsanandroid/view/View;->requestLayout()V

    .line 544
    goto :goto_0

    .line 545
    :cond_3
    instance-of v4, v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    if-eqz v4, :cond_4

    .line 546
    move-object v4, v1

    check-cast v4, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-virtual {v4, v7}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setRect(Lccsanandroid/graphics/Rect;)V

    .line 547
    move-object v4, v1

    check-cast v4, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-virtual {v4, v3, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setLayout(II)V

    .line 549
    :cond_4
    instance-of v4, v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    if-eqz v4, :cond_5

    .line 550
    move-object v4, v1

    check-cast v4, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-virtual {v4, v7}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setRect(Lccsanandroid/graphics/Rect;)V

    .line 551
    check-cast v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-virtual {v1, v3, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setLayout(II)V

    .line 554
    :cond_5
    :goto_0
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    const-string p2, "onViewRectChanged"

    invoke-direct {p0, p1, p2, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewRect instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 558
    :cond_6
    const-string p2, "view is null"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    const-string p2, "setViewRect failed: view is null"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :goto_1
    goto :goto_2

    .line 562
    :cond_7
    const-string p2, "instanceId not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    const-string p2, "setViewRect failed: instanceId not exist"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    :goto_2
    goto :goto_3

    .line 565
    :catchall_0
    move-exception p2

    .line 566
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewRect failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :goto_3
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    .line 151
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/c;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 6

    .line 650
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 651
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 652
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 653
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 654
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 655
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_0

    .line 656
    iget-object v3, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 657
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 660
    :cond_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 661
    if-nez p2, :cond_1

    .line 662
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    return-void

    .line 665
    :cond_1
    invoke-virtual {p0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 666
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 667
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/View;

    .line 668
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 669
    invoke-virtual {p2}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/ViewGroup;

    .line 670
    if-eqz v1, :cond_2

    .line 671
    invoke-virtual {v1, p2}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 672
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 673
    const-string p2, "onRemoveFromView"

    invoke-direct {p0, p1, p2, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeFromSuperView instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 676
    :cond_2
    const-string p2, "parent is null"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 677
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeFromSuperView failed: parent is null instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :goto_0
    goto :goto_1

    .line 680
    :cond_3
    const-string p2, "view is null"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeFromSuperView failed: view is null instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :goto_1
    goto :goto_2

    .line 684
    :cond_4
    const-string p2, "params not enough"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeFromSuperView failed: params not enough instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    :goto_2
    goto :goto_3

    .line 687
    :catchall_0
    move-exception p2

    .line 688
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeFromSuperView failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    :goto_3
    return-void
.end method

.method public final h(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 12

    .line 695
    const-string v0, "id"

    const-string v1, "OperateViews"

    :try_start_0
    const-string v2, "unitId"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 696
    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 697
    invoke-direct {p0, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 698
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 699
    move-object v5, p1

    check-cast v5, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 700
    iget-object v6, v5, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v6, :cond_0

    .line 701
    iget-object v4, v5, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 702
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v4

    .line 705
    :cond_0
    const-string v5, "data"

    invoke-virtual {p2, v5}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 706
    if-nez p2, :cond_1

    .line 707
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 708
    return-void

    .line 710
    :cond_1
    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 711
    invoke-virtual {p0, v2, v4}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 712
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 713
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/view/ViewGroup;

    .line 714
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroid/view/View;

    .line 715
    if-eqz v4, :cond_b

    if-nez v5, :cond_2

    goto/16 :goto_5

    .line 719
    :cond_2
    const-string v6, "rect"

    invoke-virtual {p2, v6}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 720
    instance-of v6, v5, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    .line 721
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OperateViews setNotchString = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "%1$s-%2$s-%3$s-%4$s-%5$s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    sget v9, Lccsancom/mbridge/msdk/video/bt/a/c;->k:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    const/4 v7, 0x1

    sget v9, Lccsancom/mbridge/msdk/video/bt/a/c;->l:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    const/4 v7, 0x2

    sget v9, Lccsancom/mbridge/msdk/video/bt/a/c;->m:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    const/4 v7, 0x3

    sget v9, Lccsancom/mbridge/msdk/video/bt/a/c;->n:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    const/4 v7, 0x4

    sget v9, Lccsancom/mbridge/msdk/video/bt/a/c;->o:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    move-object v6, v5

    check-cast v6, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    sget v7, Lccsancom/mbridge/msdk/video/bt/a/c;->k:I

    sget v8, Lccsancom/mbridge/msdk/video/bt/a/c;->l:I

    sget v9, Lccsancom/mbridge/msdk/video/bt/a/c;->m:I

    sget v10, Lccsancom/mbridge/msdk/video/bt/a/c;->n:I

    sget v11, Lccsancom/mbridge/msdk/video/bt/a/c;->o:I

    invoke-virtual/range {v6 .. v11}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setNotchPadding(IIIII)V

    .line 724
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/view/View;

    .line 725
    instance-of v6, v4, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-eqz v6, :cond_3

    .line 726
    move-object v2, v4

    check-cast v2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    check-cast v4, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    check-cast v5, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v2, v4, v5, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->appendSubView(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Lccsanorg/json/JSONObject;)V

    .line 727
    goto :goto_1

    .line 729
    :cond_3
    goto :goto_0

    :cond_4
    :goto_1
    goto/16 :goto_4

    .line 731
    :cond_5
    const/4 v2, 0x0

    .line 732
    nop

    .line 733
    nop

    .line 734
    if-nez p2, :cond_7

    .line 735
    instance-of p2, v5, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;

    if-eqz p2, :cond_6

    .line 736
    move-object p2, v5

    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getRect()Lccsanandroid/graphics/Rect;

    move-result-object v2

    .line 737
    move-object p2, v5

    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getViewWidth()I

    move-result v7

    .line 738
    move-object p2, v5

    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getViewHeight()I

    move-result p2

    goto :goto_2

    .line 735
    :cond_6
    const/4 p2, 0x0

    goto :goto_2

    .line 741
    :cond_7
    const-string v2, "left"

    const/16 v6, -0x3e7

    invoke-virtual {p2, v2, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 742
    const-string v7, "top"

    invoke-virtual {p2, v7, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 743
    const-string v8, "right"

    invoke-virtual {p2, v8, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 744
    const-string v9, "bottom"

    invoke-virtual {p2, v9, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 745
    new-instance v9, Lccsanandroid/graphics/Rect;

    invoke-direct {v9, v2, v7, v8, v6}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    .line 746
    const-string v2, "width"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 747
    const-string v2, "height"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    move-object v2, v9

    .line 749
    :goto_2
    new-instance v6, Lccsanandroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v6, v8, v8}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 750
    instance-of v9, v4, Lccsanandroid/widget/FrameLayout;

    if-eqz v9, :cond_8

    .line 751
    new-instance v6, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_3

    .line 752
    :cond_8
    instance-of v9, v4, Lccsanandroid/widget/RelativeLayout;

    if-eqz v9, :cond_9

    .line 753
    new-instance v6, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_3

    .line 754
    :cond_9
    instance-of v9, v4, Lccsanandroid/widget/LinearLayout;

    if-eqz v9, :cond_a

    .line 755
    new-instance v6, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 757
    :cond_a
    :goto_3
    invoke-direct {p0, v6, v2, v7, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Lccsanandroid/view/ViewGroup$LayoutParams;Lccsanandroid/graphics/Rect;II)Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 758
    invoke-virtual {v4, v5, p2}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 760
    :goto_4
    invoke-virtual {p0, p1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    const-string p2, "onAppendView"

    invoke-direct {p0, p1, p2, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appendSubView parentId = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " childId = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    goto :goto_6

    .line 716
    :cond_b
    :goto_5
    const-string p2, "view is not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    return-void

    .line 764
    :cond_c
    const-string p2, "instanceId is not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 765
    const-string p2, "appendSubView failed: instanceId is not exist"

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    :goto_6
    goto :goto_7

    .line 767
    :catchall_0
    move-exception p2

    .line 768
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appendSubView failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :goto_7
    return-void
.end method

.method public final i(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 10

    .line 775
    const-string v0, "id"

    const-string v1, "OperateViews"

    :try_start_0
    const-string v2, "unitId"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 776
    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 777
    invoke-direct {p0, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 778
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 779
    move-object v5, p1

    check-cast v5, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 780
    iget-object v6, v5, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v6, :cond_0

    .line 781
    iget-object v4, v5, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 782
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v4

    .line 785
    :cond_0
    const-string v5, "data"

    invoke-virtual {p2, v5}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 786
    if-eqz p2, :cond_d

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_7

    .line 790
    :cond_1
    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    invoke-virtual {p0, v2, v4}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 792
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 793
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/view/ViewGroup;

    .line 794
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroid/view/View;

    .line 795
    if-eqz v4, :cond_b

    if-nez v5, :cond_2

    goto/16 :goto_5

    .line 799
    :cond_2
    const-string v6, "rect"

    invoke-virtual {p2, v6}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 800
    instance-of v6, v5, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-eqz v6, :cond_5

    .line 801
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/view/View;

    .line 802
    instance-of v6, v4, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-eqz v6, :cond_3

    .line 803
    move-object v2, v4

    check-cast v2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    check-cast v4, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    check-cast v5, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v2, v4, v5, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->appendSubView(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Lccsanorg/json/JSONObject;)V

    .line 804
    goto :goto_1

    .line 806
    :cond_3
    goto :goto_0

    :cond_4
    :goto_1
    goto/16 :goto_4

    .line 808
    :cond_5
    const/4 v2, 0x0

    .line 809
    nop

    .line 810
    nop

    .line 811
    const/4 v6, 0x0

    if-nez p2, :cond_7

    .line 812
    instance-of p2, v5, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;

    if-eqz p2, :cond_6

    .line 813
    move-object p2, v5

    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getRect()Lccsanandroid/graphics/Rect;

    move-result-object v2

    .line 814
    move-object p2, v5

    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getViewWidth()I

    move-result v6

    .line 815
    move-object p2, v5

    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getViewHeight()I

    move-result p2

    goto :goto_2

    .line 812
    :cond_6
    const/4 p2, 0x0

    goto :goto_2

    .line 818
    :cond_7
    const-string v2, "left"

    const/16 v6, -0x3e7

    invoke-virtual {p2, v2, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 819
    const-string v7, "top"

    invoke-virtual {p2, v7, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 820
    const-string v8, "right"

    invoke-virtual {p2, v8, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 821
    const-string v9, "bottom"

    invoke-virtual {p2, v9, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 822
    new-instance v9, Lccsanandroid/graphics/Rect;

    invoke-direct {v9, v2, v7, v8, v6}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    .line 823
    const-string v2, "width"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 824
    const-string v2, "height"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    move-object v2, v9

    .line 826
    :goto_2
    new-instance v7, Lccsanandroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v8}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 827
    instance-of v9, v4, Lccsanandroid/widget/FrameLayout;

    if-eqz v9, :cond_8

    .line 828
    new-instance v7, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_3

    .line 829
    :cond_8
    instance-of v9, v4, Lccsanandroid/widget/RelativeLayout;

    if-eqz v9, :cond_9

    .line 830
    new-instance v7, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_3

    .line 831
    :cond_9
    instance-of v9, v4, Lccsanandroid/widget/LinearLayout;

    if-eqz v9, :cond_a

    .line 832
    new-instance v7, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 834
    :cond_a
    :goto_3
    invoke-direct {p0, v7, v2, v6, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Lccsanandroid/view/ViewGroup$LayoutParams;Lccsanandroid/graphics/Rect;II)Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 835
    invoke-virtual {v4, v5, p2}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 837
    :goto_4
    invoke-virtual {p0, p1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 838
    const-string p2, "onAppendViewTo"

    invoke-direct {p0, p1, p2, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appendViewTo parentId = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " childId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    goto :goto_6

    .line 796
    :cond_b
    :goto_5
    const-string p2, "view is not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    return-void

    .line 841
    :cond_c
    const-string p2, "instanceId is not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    const-string p2, "appendViewTo failed: instanceId is not exist"

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :goto_6
    goto :goto_8

    .line 787
    :cond_d
    :goto_7
    const-string p2, "unitId or data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    return-void

    .line 844
    :catchall_0
    move-exception p2

    .line 845
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 846
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appendViewTo failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :goto_8
    return-void
.end method

.method public final j(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 6

    .line 852
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 853
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 854
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 855
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 856
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 857
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_0

    .line 858
    iget-object v3, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 859
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 862
    :cond_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 863
    if-nez p2, :cond_1

    .line 864
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 865
    return-void

    .line 867
    :cond_1
    invoke-virtual {p0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 868
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 869
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/View;

    .line 870
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 871
    invoke-virtual {p2}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/ViewGroup;

    .line 872
    if-eqz v1, :cond_2

    .line 873
    invoke-virtual {v1, p2}, Lccsanandroid/view/ViewGroup;->bringChildToFront(Lccsanandroid/view/View;)V

    .line 874
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 875
    const-string p2, "onBringViewToFront"

    invoke-direct {p0, p1, p2, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bringViewToFront instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 878
    :cond_2
    const-string p2, "parent is null"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 879
    const-string p2, "bringViewToFront failed: parent is null"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    :goto_0
    goto :goto_1

    .line 882
    :cond_3
    const-string p2, "view is null"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 883
    const-string p2, "bringViewToFront failed: view is null"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    :goto_1
    goto :goto_2

    .line 886
    :cond_4
    const-string p2, "instanceId is not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 887
    const-string p2, "bringViewToFront failed: instanceId is not exist"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    :goto_2
    goto :goto_3

    .line 889
    :catchall_0
    move-exception p2

    .line 890
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 891
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bringViewToFront failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :goto_3
    return-void
.end method

.method public final k(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 6

    .line 897
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 898
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 899
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 900
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 901
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 902
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_0

    .line 903
    iget-object v3, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 904
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 907
    :cond_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 908
    if-nez p2, :cond_1

    .line 909
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 910
    return-void

    .line 912
    :cond_1
    invoke-virtual {p0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 913
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 914
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/View;

    .line 915
    if-eqz p2, :cond_2

    .line 916
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 917
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 918
    const-string p2, "onHideView"

    invoke-direct {p0, p1, p2, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideView instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 921
    :cond_2
    const-string p2, "view not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 922
    const-string p2, "hideView failed: view not exist"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    :goto_0
    goto :goto_1

    .line 925
    :cond_3
    const-string p2, "instanceId not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 926
    const-string p2, "hideView failed: instanceId not exist"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    :goto_1
    goto :goto_2

    .line 928
    :catchall_0
    move-exception p2

    .line 929
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 930
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideView failed: + "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    :goto_2
    return-void
.end method

.method public final l(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 6

    .line 936
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 937
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 938
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 939
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 940
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 941
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_0

    .line 942
    iget-object v3, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 943
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 946
    :cond_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 947
    if-nez p2, :cond_1

    .line 948
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 949
    return-void

    .line 951
    :cond_1
    invoke-virtual {p0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 952
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 953
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/View;

    .line 954
    if-eqz p2, :cond_2

    .line 955
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 956
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 957
    const-string p2, "onShowView"

    invoke-direct {p0, p1, p2, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showView instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 960
    :cond_2
    const-string p2, "view not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 961
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showView failed: view not exist instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    :goto_0
    goto :goto_1

    .line 964
    :cond_3
    const-string p2, "instanceId not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 965
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showView failed: instanceId not exist instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    :goto_1
    goto :goto_2

    .line 967
    :catchall_0
    move-exception p2

    .line 968
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 969
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showView failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    :goto_2
    return-void
.end method

.method public final m(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 6

    .line 975
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 976
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 977
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 978
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 979
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 980
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_0

    .line 981
    iget-object v3, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 982
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 985
    :cond_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 986
    if-nez p2, :cond_1

    .line 987
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 988
    return-void

    .line 990
    :cond_1
    const-string v4, "color"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 991
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 992
    const-string p2, "color is not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 993
    return-void

    .line 995
    :cond_2
    invoke-virtual {p0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 996
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 997
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 998
    if-eqz v1, :cond_3

    .line 999
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    invoke-static {p2}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2}, Lccsanandroid/view/View;->setBackgroundColor(I)V

    .line 1001
    const-string p2, "onViewBgColorChanged"

    invoke-direct {p0, p1, p2, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewBgColor instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1004
    :cond_3
    const-string p2, "view not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1005
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewBgColor failed: view not exist instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    :goto_0
    goto :goto_1

    .line 1008
    :cond_4
    const-string p2, "instanceId not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1009
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewBgColor failed: instanceId not exist instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1014
    :goto_1
    goto :goto_2

    .line 1011
    :catchall_0
    move-exception p2

    .line 1012
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1013
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewBgColor failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    :goto_2
    return-void
.end method

.method public final n(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 7

    .line 1019
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1020
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1021
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1022
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1023
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1024
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_0

    .line 1025
    iget-object v3, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1026
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 1029
    :cond_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1030
    if-nez p2, :cond_1

    .line 1031
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1032
    return-void

    .line 1034
    :cond_1
    const-string v4, "alpha"

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p2, v4, v5, v6}, Lccsanorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 1035
    invoke-virtual {p0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 1036
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1037
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/View;

    .line 1038
    if-eqz p2, :cond_2

    .line 1039
    double-to-float v1, v4

    invoke-virtual {p2, v1}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 1040
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1041
    const-string p2, "onViewAlphaChanged"

    invoke-direct {p0, p1, p2, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewAlpha instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1044
    :cond_2
    const-string p2, "view not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewAlpha failed: view not exist instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    :goto_0
    goto :goto_1

    .line 1048
    :cond_3
    const-string p2, "instanceId not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1049
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewAlpha failed: instanceId not exist instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    :goto_1
    goto :goto_2

    .line 1051
    :catchall_0
    move-exception p2

    .line 1052
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1053
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewAlpha failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    :goto_2
    return-void
.end method

.method public final o(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 9

    .line 1059
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1060
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1061
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1062
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1063
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1064
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_0

    .line 1065
    iget-object v3, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1066
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 1069
    :cond_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1070
    if-nez p2, :cond_1

    .line 1071
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1072
    return-void

    .line 1074
    :cond_1
    const-string v4, "vertical"

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p2, v4, v5, v6}, Lccsanorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    .line 1075
    const-string v4, "horizon"

    invoke-virtual {p2, v4, v5, v6}, Lccsanorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 1076
    invoke-virtual {p0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 1077
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1078
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/View;

    .line 1079
    if-eqz p2, :cond_2

    .line 1080
    double-to-float v1, v4

    invoke-virtual {p2, v1}, Lccsanandroid/view/View;->setScaleX(F)V

    .line 1081
    double-to-float v1, v7

    invoke-virtual {p2, v1}, Lccsanandroid/view/View;->setScaleY(F)V

    .line 1082
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1083
    const-string p2, "onViewScaleChanged"

    invoke-direct {p0, p1, p2, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewScale instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1086
    :cond_2
    const-string p2, "view not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1087
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewScale failed: view not exist instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    :goto_0
    goto :goto_1

    .line 1090
    :cond_3
    const-string p2, "instanceId not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1091
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewScale failed: instanceId not exist instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1096
    :goto_1
    goto :goto_2

    .line 1093
    :catchall_0
    move-exception p2

    .line 1094
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1095
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewScale failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    :goto_2
    return-void
.end method

.method public final p(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 12

    .line 1101
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1102
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1103
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1104
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1105
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1106
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_0

    .line 1107
    iget-object v3, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1108
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 1111
    :cond_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1112
    if-nez p2, :cond_1

    .line 1113
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1114
    return-void

    .line 1116
    :cond_1
    const-string v4, "targetComponentId"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1117
    const-string v5, "rect"

    invoke-virtual {p2, v5}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1119
    invoke-virtual {p0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 1120
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1121
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/view/View;

    .line 1122
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 1123
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1124
    invoke-virtual {v1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lccsanandroid/view/ViewGroup;

    .line 1125
    invoke-virtual {v5, v1}, Lccsanandroid/view/ViewGroup;->indexOfChild(Lccsanandroid/view/View;)I

    move-result v1

    .line 1127
    const/4 v6, 0x0

    .line 1128
    nop

    .line 1129
    nop

    .line 1130
    const/4 v7, 0x0

    if-nez p2, :cond_3

    .line 1131
    instance-of p2, v3, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;

    if-eqz p2, :cond_2

    .line 1132
    move-object p2, v3

    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getRect()Lccsanandroid/graphics/Rect;

    move-result-object v6

    .line 1133
    move-object p2, v3

    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getViewWidth()I

    move-result v7

    .line 1134
    move-object p2, v3

    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getViewHeight()I

    move-result p2

    move v11, v7

    move v7, p2

    move p2, v11

    goto :goto_0

    .line 1131
    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    .line 1137
    :cond_3
    const-string v6, "left"

    const/16 v7, -0x3e7

    invoke-virtual {p2, v6, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 1138
    const-string v8, "top"

    invoke-virtual {p2, v8, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 1139
    const-string v9, "right"

    invoke-virtual {p2, v9, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 1140
    const-string v10, "bottom"

    invoke-virtual {p2, v10, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 1141
    new-instance v10, Lccsanandroid/graphics/Rect;

    invoke-direct {v10, v6, v8, v9, v7}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    .line 1142
    const-string v6, "width"

    invoke-virtual {p2, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 1143
    const-string v6, "height"

    invoke-virtual {p2, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    move-object v6, v10

    move v11, v7

    move v7, p2

    move p2, v11

    .line 1145
    :goto_0
    new-instance v8, Lccsanandroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v9}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1146
    instance-of v10, v5, Lccsanandroid/widget/FrameLayout;

    if-eqz v10, :cond_4

    .line 1147
    new-instance v8, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 1148
    :cond_4
    instance-of v10, v5, Lccsanandroid/widget/RelativeLayout;

    if-eqz v10, :cond_5

    .line 1149
    new-instance v8, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 1150
    :cond_5
    instance-of v10, v5, Lccsanandroid/widget/LinearLayout;

    if-eqz v10, :cond_6

    .line 1151
    new-instance v8, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1153
    :cond_6
    :goto_1
    invoke-direct {p0, v8, v6, p2, v7}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Lccsanandroid/view/ViewGroup$LayoutParams;Lccsanandroid/graphics/Rect;II)Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 1155
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v3, v1, p2}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1156
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1157
    const-string p2, "onInsertViewAbove"

    invoke-direct {p0, p1, p2, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertViewAbove instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " brotherId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    goto :goto_2

    .line 1160
    :cond_7
    const-string p2, "view not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1161
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertViewAbove failed: view not exist instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    :goto_2
    goto :goto_3

    .line 1164
    :cond_8
    const-string p2, "instanceId not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1165
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertViewAbove failed: instanceId not exist instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1170
    :goto_3
    goto :goto_4

    .line 1167
    :catchall_0
    move-exception p2

    .line 1168
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertViewAbove failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    :goto_4
    return-void
.end method

.method public final q(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 11

    .line 1175
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1176
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1177
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1178
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1179
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1180
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_0

    .line 1181
    iget-object v3, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1182
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 1185
    :cond_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1186
    if-nez p2, :cond_1

    .line 1187
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1188
    return-void

    .line 1190
    :cond_1
    const-string v4, "targetComponentId"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1191
    const-string v5, "rect"

    invoke-virtual {p2, v5}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1193
    invoke-virtual {p0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 1194
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1195
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/view/View;

    .line 1196
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 1197
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1198
    invoke-virtual {v1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lccsanandroid/view/ViewGroup;

    .line 1199
    invoke-virtual {v4, v1}, Lccsanandroid/view/ViewGroup;->indexOfChild(Lccsanandroid/view/View;)I

    move-result v1

    .line 1201
    const/4 v5, 0x0

    .line 1202
    nop

    .line 1203
    nop

    .line 1204
    const/4 v6, 0x0

    if-nez p2, :cond_3

    .line 1205
    instance-of p2, v3, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;

    if-eqz p2, :cond_2

    .line 1206
    move-object p2, v3

    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getRect()Lccsanandroid/graphics/Rect;

    move-result-object v5

    .line 1207
    move-object p2, v3

    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getViewWidth()I

    move-result v6

    .line 1208
    move-object p2, v3

    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getViewHeight()I

    move-result p2

    move v10, v6

    move v6, p2

    move p2, v10

    goto :goto_0

    .line 1205
    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    .line 1211
    :cond_3
    const-string v5, "left"

    const/16 v6, -0x3e7

    invoke-virtual {p2, v5, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 1212
    const-string v7, "top"

    invoke-virtual {p2, v7, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 1213
    const-string v8, "right"

    invoke-virtual {p2, v8, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 1214
    const-string v9, "bottom"

    invoke-virtual {p2, v9, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 1215
    new-instance v9, Lccsanandroid/graphics/Rect;

    invoke-direct {v9, v5, v7, v8, v6}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    .line 1216
    const-string v5, "width"

    invoke-virtual {p2, v5}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 1217
    const-string v5, "height"

    invoke-virtual {p2, v5}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    move-object v5, v9

    move v10, v6

    move v6, p2

    move p2, v10

    .line 1219
    :goto_0
    new-instance v7, Lccsanandroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v8}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1220
    instance-of v9, v4, Lccsanandroid/widget/FrameLayout;

    if-eqz v9, :cond_4

    .line 1221
    new-instance v7, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 1222
    :cond_4
    instance-of v9, v4, Lccsanandroid/widget/RelativeLayout;

    if-eqz v9, :cond_5

    .line 1223
    new-instance v7, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 1224
    :cond_5
    instance-of v9, v4, Lccsanandroid/widget/LinearLayout;

    if-eqz v9, :cond_6

    .line 1225
    new-instance v7, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1227
    :cond_6
    :goto_1
    invoke-direct {p0, v7, v5, p2, v6}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Lccsanandroid/view/ViewGroup$LayoutParams;Lccsanandroid/graphics/Rect;II)Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 1228
    invoke-virtual {v4, v3, v1, p2}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1229
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1230
    const-string p2, "onInsertViewBelow"

    invoke-direct {p0, p1, p2, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertViewBelow instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    goto :goto_2

    .line 1233
    :cond_7
    const-string p2, "view not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1234
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertViewBelow failed: view not exist instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    :goto_2
    goto :goto_3

    .line 1237
    :cond_8
    const-string p2, "instanceId not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1238
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertViewBelow failed: instanceId not exist instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1243
    :goto_3
    goto :goto_4

    .line 1240
    :catchall_0
    move-exception p2

    .line 1241
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1242
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertViewBelow failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    :goto_4
    return-void
.end method

.method public final r(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 18

    .line 1248
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "unitId"

    const-string v4, "OperateViews"

    :try_start_0
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1249
    const-string v6, "id"

    invoke-virtual {v0, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1250
    invoke-direct {v1, v6}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1251
    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1252
    move-object v8, v2

    check-cast v8, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1253
    iget-object v9, v8, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v9, :cond_0

    .line 1254
    iget-object v7, v8, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1255
    invoke-virtual {v7}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v7

    .line 1258
    :cond_0
    const-string v8, "data"

    invoke-virtual {v0, v8}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v8

    .line 1259
    if-nez v8, :cond_1

    .line 1260
    const-string v0, "data is empty"

    invoke-direct {v1, v2, v0}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1261
    return-void

    .line 1263
    :cond_1
    const-string v9, "content"

    invoke-virtual {v8, v9}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v8

    .line 1264
    if-nez v8, :cond_2

    .line 1265
    const-string v0, "content is empty"

    invoke-direct {v1, v2, v0}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1266
    return-void

    .line 1268
    :cond_2
    const-string v9, "fileURL"

    invoke-virtual {v8, v9}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1269
    const-string v10, "filePath"

    invoke-virtual {v8, v10}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1270
    const-string v11, "html"

    invoke-virtual {v8, v11}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1271
    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v10}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v11}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1272
    const-string v0, "url is empty"

    invoke-direct {v1, v2, v0}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1273
    return-void

    .line 1275
    :cond_3
    const-string v12, "campaigns"

    invoke-virtual {v8, v12}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v12

    .line 1276
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1277
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lccsanorg/json/JSONArray;->length()I

    move-result v15

    if-lez v15, :cond_5

    .line 1278
    invoke-virtual {v12}, Lccsanorg/json/JSONArray;->length()I

    move-result v15

    .line 1279
    const/4 v14, 0x0

    :goto_0
    if-ge v14, v15, :cond_5

    .line 1280
    invoke-virtual {v12, v14}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v17, v12

    invoke-static/range {v16 .. v16}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v12

    .line 1281
    if-eqz v12, :cond_4

    .line 1282
    invoke-virtual {v12, v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 1283
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1279
    :cond_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v12, v17

    goto :goto_0

    .line 1287
    :cond_5
    invoke-virtual {v8, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1288
    const-string v12, "unitSetting"

    invoke-virtual {v8, v12}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lccsancom/mbridge/msdk/videocommon/d/c;->a(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v12

    .line 1289
    if-eqz v12, :cond_6

    .line 1290
    invoke-virtual {v12, v3}, Lccsancom/mbridge/msdk/videocommon/d/c;->a(Ljava/lang/String;)V

    .line 1292
    :cond_6
    const-string v3, "rect"

    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 1293
    new-instance v3, Lccsanandroid/graphics/Rect;

    const/16 v14, -0x3e7

    invoke-direct {v3, v14, v14, v14, v14}, Lccsanandroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1294
    nop

    .line 1295
    nop

    .line 1296
    if-eqz v0, :cond_7

    .line 1297
    :try_start_1
    const-string v3, "left"

    invoke-virtual {v0, v3, v14}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 1298
    const-string v15, "top"

    invoke-virtual {v0, v15, v14}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    .line 1299
    const-string v14, "right"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v16, v4

    const/16 v4, -0x3e7

    :try_start_2
    invoke-virtual {v0, v14, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 1300
    const-string v4, "bottom"

    const/16 v2, -0x3e7

    invoke-virtual {v0, v4, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 1301
    new-instance v4, Lccsanandroid/graphics/Rect;

    invoke-direct {v4, v3, v15, v14, v2}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    .line 1302
    const-string v2, "width"

    invoke-virtual {v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1303
    const-string v3, "height"

    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    move-object v3, v4

    goto :goto_1

    .line 1329
    :catchall_0
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_5

    .line 1296
    :cond_7
    move-object/from16 v16, v4

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1305
    :goto_1
    const-string v4, "refreshCache"

    const/4 v14, 0x0

    invoke-virtual {v8, v4, v14}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 1306
    invoke-virtual {v1, v5, v7}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 1307
    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1308
    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroid/view/View;

    .line 1309
    instance-of v7, v5, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    if-eqz v7, :cond_8

    .line 1310
    check-cast v5, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 1311
    invoke-virtual {v5, v11}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setHtml(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {v5, v10}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setFilePath(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {v5, v9}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setFileURL(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {v5, v3}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setRect(Lccsanandroid/graphics/Rect;)V

    .line 1315
    invoke-virtual {v5, v2, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setLayout(II)V

    .line 1316
    invoke-virtual {v5, v13}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setCampaigns(Ljava/util/List;)V

    .line 1317
    invoke-virtual {v5, v12}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setRewardUnitSetting(Lccsancom/mbridge/msdk/videocommon/d/c;)V

    .line 1318
    invoke-virtual {v5, v4}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->webviewLoad(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1319
    move-object/from16 v2, p1

    :try_start_3
    invoke-virtual {v1, v2, v6}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webviewLoad instanceId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v3, v16

    :try_start_4
    invoke-static {v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    goto :goto_2

    .line 1329
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 1322
    :cond_8
    move-object/from16 v2, p1

    move-object/from16 v3, v16

    const-string v0, "view not exist"

    invoke-direct {v1, v2, v0}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "webviewLoad failed: view not exist instanceId = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    :goto_2
    goto :goto_3

    .line 1326
    :cond_9
    move-object/from16 v2, p1

    move-object/from16 v3, v16

    const-string v0, "instanceId not exist"

    invoke-direct {v1, v2, v0}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "webviewLoad failed: instanceId not exist instanceId = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1332
    :goto_3
    goto :goto_7

    .line 1329
    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v2, p1

    :goto_4
    move-object/from16 v3, v16

    goto :goto_6

    :catchall_4
    move-exception v0

    :goto_5
    move-object v3, v4

    .line 1330
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "webviewLoad failed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    :goto_7
    return-void
.end method

.method public final s(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 6

    .line 1337
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1338
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1339
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1340
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1341
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1342
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_0

    .line 1343
    iget-object v3, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1344
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 1347
    :cond_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1348
    if-nez p2, :cond_1

    .line 1349
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1350
    return-void

    .line 1352
    :cond_1
    invoke-virtual {p0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 1353
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1354
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/View;

    .line 1355
    instance-of v1, p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    if-eqz v1, :cond_3

    .line 1356
    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->webviewReload()Z

    move-result p2

    .line 1357
    if-eqz p2, :cond_2

    .line 1358
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1359
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webviewReload instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1361
    :cond_2
    const-string p2, "reload failed"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1362
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webviewReload failed reload failed instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    :goto_0
    goto :goto_1

    .line 1365
    :cond_3
    const-string p2, "view not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1366
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webviewReload failed view not exist instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    :goto_1
    goto :goto_2

    .line 1369
    :cond_4
    const-string p2, "instanceId not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1370
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webviewReload failed instanceId not exist instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1375
    :goto_2
    goto :goto_3

    .line 1372
    :catchall_0
    move-exception p2

    .line 1373
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1374
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webviewReload failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    :goto_3
    return-void
.end method

.method public final t(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 6

    .line 1380
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1381
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1382
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1383
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1384
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1385
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_0

    .line 1386
    iget-object v3, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1387
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 1390
    :cond_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1391
    if-nez p2, :cond_1

    .line 1392
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1393
    return-void

    .line 1395
    :cond_1
    invoke-virtual {p0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 1396
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1397
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/View;

    .line 1398
    instance-of v1, p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    if-eqz v1, :cond_3

    .line 1399
    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->webviewGoBack()Z

    move-result p2

    .line 1400
    if-eqz p2, :cond_2

    .line 1401
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1402
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webviewGoBack instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1404
    :cond_2
    const-string p2, "webviewGoBack failed"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1405
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webviewGoBack failed instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    :goto_0
    goto :goto_1

    .line 1408
    :cond_3
    const-string p2, "view not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1409
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webviewGoBack failed view not exist instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    :goto_1
    goto :goto_2

    .line 1412
    :cond_4
    const-string p2, "instanceId not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1413
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webviewGoBack failed instanceId not exist instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1418
    :goto_2
    goto :goto_3

    .line 1415
    :catchall_0
    move-exception p2

    .line 1416
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1417
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webviewGoBack failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    :goto_3
    return-void
.end method

.method public final u(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 6

    .line 1423
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1424
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1425
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1426
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1427
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1428
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_0

    .line 1429
    iget-object v3, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1430
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 1433
    :cond_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1434
    if-nez p2, :cond_1

    .line 1435
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1436
    return-void

    .line 1438
    :cond_1
    invoke-virtual {p0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 1439
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1440
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/View;

    .line 1441
    instance-of v1, p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    if-eqz v1, :cond_3

    .line 1442
    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->webviewGoForward()Z

    move-result p2

    .line 1443
    if-eqz p2, :cond_2

    .line 1444
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1445
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webviewGoForward instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1447
    :cond_2
    const-string p2, "webviewGoForward failed"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1448
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webviewGoForward failed instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    :goto_0
    goto :goto_1

    .line 1451
    :cond_3
    const-string p2, "view not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1452
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webviewGoForward failed view not exist instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    :goto_1
    goto :goto_2

    .line 1455
    :cond_4
    const-string p2, "instanceId not exist"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1456
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webviewGoForward failed instanceId not exist instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1461
    :goto_2
    goto :goto_3

    .line 1458
    :catchall_0
    move-exception p2

    .line 1459
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1460
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webviewGoForward failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    :goto_3
    return-void
.end method

.method public final v(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 6

    .line 1466
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1467
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1468
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1469
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1470
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1471
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_0

    .line 1472
    iget-object v3, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1473
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 1476
    :cond_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1477
    if-nez p2, :cond_1

    .line 1478
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1479
    return-void

    .line 1481
    :cond_1
    invoke-virtual {p0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 1482
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1483
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/View;

    .line 1484
    instance-of v1, p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    if-eqz v1, :cond_2

    .line 1485
    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->play()V

    .line 1486
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1487
    const-string p2, "playerPlay success"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1489
    :cond_2
    const-string p2, "instanceId is not player"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1490
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playerPlay failed instanceId is not player instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    :goto_0
    goto :goto_1

    .line 1493
    :cond_3
    const-string p2, "instanceId not exit"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1494
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playerPlay failed instanceId not exit instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1499
    :goto_1
    goto :goto_2

    .line 1496
    :catchall_0
    move-exception p2

    .line 1497
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1498
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playerPlay failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    :goto_2
    return-void
.end method

.method public final w(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 6

    .line 1504
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1505
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1506
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1507
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1508
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1509
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_0

    .line 1510
    iget-object v3, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1511
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 1514
    :cond_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1515
    if-nez p2, :cond_1

    .line 1516
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1517
    return-void

    .line 1519
    :cond_1
    invoke-virtual {p0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 1520
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1521
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/View;

    .line 1522
    instance-of v1, p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    if-eqz v1, :cond_2

    .line 1523
    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->pause()V

    .line 1524
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1525
    const-string p2, "playerPause success"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1527
    :cond_2
    const-string p2, "instanceId is not player"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1528
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playerPause failed instanceId is not player instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    :goto_0
    goto :goto_1

    .line 1531
    :cond_3
    const-string p2, "instanceId not exit"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1532
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playerPause failed instanceId not exit instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1537
    :goto_1
    goto :goto_2

    .line 1534
    :catchall_0
    move-exception p2

    .line 1535
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1536
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playerPause failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    :goto_2
    return-void
.end method

.method public final x(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 6

    .line 1542
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1543
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1544
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1545
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1546
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1547
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_0

    .line 1548
    iget-object v3, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1549
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 1552
    :cond_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1553
    if-nez p2, :cond_1

    .line 1554
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1555
    return-void

    .line 1557
    :cond_1
    invoke-virtual {p0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 1558
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1559
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/View;

    .line 1560
    instance-of v1, p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    if-eqz v1, :cond_2

    .line 1561
    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->resume()V

    .line 1562
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    const-string p2, "playerResume success"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1565
    :cond_2
    const-string p2, "instanceId is not player"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1566
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playerResume failed instanceId is not player instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    :goto_0
    goto :goto_1

    .line 1569
    :cond_3
    const-string p2, "instanceId not exit"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1570
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playerResume failed instanceId not exit instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1575
    :goto_1
    goto :goto_2

    .line 1572
    :catchall_0
    move-exception p2

    .line 1573
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1574
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playerResume failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    :goto_2
    return-void
.end method

.method public final y(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 6

    .line 1580
    const-string v0, "OperateViews"

    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1581
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1582
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1583
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1584
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1585
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_0

    .line 1586
    iget-object v3, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1587
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 1590
    :cond_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1591
    if-nez p2, :cond_1

    .line 1592
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1593
    return-void

    .line 1595
    :cond_1
    invoke-virtual {p0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 1596
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1597
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/View;

    .line 1598
    instance-of v1, p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    if-eqz v1, :cond_2

    .line 1599
    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->stop()V

    .line 1600
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1601
    const-string p2, "playerStop success"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1603
    :cond_2
    const-string p2, "instanceId is not player"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1604
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playerStop failed instanceId is not player instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    :goto_0
    goto :goto_1

    .line 1607
    :cond_3
    const-string p2, "instanceId not exit"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1608
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playerStop failed instanceId not exit instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1613
    :goto_1
    goto :goto_2

    .line 1610
    :catchall_0
    move-exception p2

    .line 1611
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1612
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playerStop failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    :goto_2
    return-void
.end method

.method public final z(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 1

    .line 1618
    :try_start_0
    const-string v0, "unitId"

    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1619
    const-string v0, "data"

    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1620
    if-nez p2, :cond_0

    .line 1621
    const-string p2, "data is empty"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1622
    return-void

    .line 1626
    :cond_0
    goto :goto_0

    .line 1624
    :catchall_0
    move-exception p2

    .line 1625
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1627
    :goto_0
    return-void
.end method
