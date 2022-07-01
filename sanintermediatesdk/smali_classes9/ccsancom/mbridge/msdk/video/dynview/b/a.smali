.class public Lccsancom/mbridge/msdk/video/dynview/b/a;
.super Ljava/lang/Object;
.source "DataEnergize.java"


# static fields
.field private static volatile a:Lccsancom/mbridge/msdk/video/dynview/b/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static a()Lccsancom/mbridge/msdk/video/dynview/b/a;
    .locals 2

    .line 22
    sget-object v0, Lccsancom/mbridge/msdk/video/dynview/b/a;->a:Lccsancom/mbridge/msdk/video/dynview/b/a;

    if-nez v0, :cond_1

    .line 23
    const-class v0, Lccsancom/mbridge/msdk/video/dynview/b/a;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/video/dynview/b/a;->a:Lccsancom/mbridge/msdk/video/dynview/b/a;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lccsancom/mbridge/msdk/video/dynview/b/a;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/video/dynview/b/a;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/video/dynview/b/a;->a:Lccsancom/mbridge/msdk/video/dynview/b/a;

    .line 27
    :cond_0
    sget-object v1, Lccsancom/mbridge/msdk/video/dynview/b/a;->a:Lccsancom/mbridge/msdk/video/dynview/b/a;

    monitor-exit v0

    return-object v1

    .line 28
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_1
    sget-object v0, Lccsancom/mbridge/msdk/video/dynview/b/a;->a:Lccsancom/mbridge/msdk/video/dynview/b/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/video/module/a/a;)V
    .locals 1

    .line 56
    new-instance v0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;-><init>()V

    .line 57
    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->bulidMofferAd(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 58
    return-void
.end method

.method public final a(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/video/dynview/b;Ljava/util/Map;Lccsancom/mbridge/msdk/video/dynview/d/b;)V
    .locals 1

    .line 35
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/dynview/b;->h()I

    move-result v0

    .line 36
    packed-switch v0, :pswitch_data_0

    .line 41
    invoke-interface {p4}, Lccsancom/mbridge/msdk/video/dynview/d/b;->a()V

    goto :goto_0

    .line 38
    :pswitch_0
    nop

    .line 1051
    new-instance v0, Lccsancom/mbridge/msdk/video/dynview/i/a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/video/dynview/i/a;-><init>()V

    invoke-virtual {v0, p2, p1, p3, p4}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Lccsancom/mbridge/msdk/video/dynview/b;Lccsanandroid/view/View;Ljava/util/Map;Lccsancom/mbridge/msdk/video/dynview/d/b;)V

    .line 39
    nop

    .line 43
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
