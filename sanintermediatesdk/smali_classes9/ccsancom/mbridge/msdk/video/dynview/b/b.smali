.class public Lccsancom/mbridge/msdk/video/dynview/b/b;
.super Ljava/lang/Object;
.source "UIEnergize.java"


# static fields
.field private static volatile a:Lccsancom/mbridge/msdk/video/dynview/b/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a()Lccsancom/mbridge/msdk/video/dynview/b/b;
    .locals 2

    .line 26
    sget-object v0, Lccsancom/mbridge/msdk/video/dynview/b/b;->a:Lccsancom/mbridge/msdk/video/dynview/b/b;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lccsancom/mbridge/msdk/video/dynview/b/b;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/video/dynview/b/b;->a:Lccsancom/mbridge/msdk/video/dynview/b/b;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lccsancom/mbridge/msdk/video/dynview/b/b;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/video/dynview/b/b;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/video/dynview/b/b;->a:Lccsancom/mbridge/msdk/video/dynview/b/b;

    .line 31
    :cond_0
    sget-object v1, Lccsancom/mbridge/msdk/video/dynview/b/b;->a:Lccsancom/mbridge/msdk/video/dynview/b/b;

    monitor-exit v0

    return-object v1

    .line 32
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    sget-object v0, Lccsancom/mbridge/msdk/video/dynview/b/b;->a:Lccsancom/mbridge/msdk/video/dynview/b/b;

    return-object v0
.end method


# virtual methods
.method public final a(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/video/dynview/b;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Lccsancom/mbridge/msdk/video/dynview/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 42
    if-nez p2, :cond_0

    .line 43
    return-void

    .line 45
    :cond_0
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/dynview/b;->h()I

    move-result p3

    .line 46
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 57
    :pswitch_0
    nop

    .line 1098
    new-instance p3, Lccsancom/mbridge/msdk/video/dynview/i/b;

    invoke-direct {p3}, Lccsancom/mbridge/msdk/video/dynview/i/b;-><init>()V

    invoke-virtual {p3, p1, p2}, Lccsancom/mbridge/msdk/video/dynview/i/b;->c(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/video/dynview/b;)V

    goto :goto_0

    .line 54
    :pswitch_1
    nop

    .line 1087
    new-instance p3, Lccsancom/mbridge/msdk/video/dynview/i/b;

    invoke-direct {p3}, Lccsancom/mbridge/msdk/video/dynview/i/b;-><init>()V

    invoke-virtual {p3, p1, p2}, Lccsancom/mbridge/msdk/video/dynview/i/b;->b(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/video/dynview/b;)V

    .line 55
    goto :goto_0

    .line 51
    :pswitch_2
    nop

    .line 1079
    new-instance p3, Lccsancom/mbridge/msdk/video/dynview/i/b;

    invoke-direct {p3}, Lccsancom/mbridge/msdk/video/dynview/i/b;-><init>()V

    invoke-virtual {p3, p1, p2}, Lccsancom/mbridge/msdk/video/dynview/i/b;->a(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/video/dynview/b;)V

    .line 52
    goto :goto_0

    .line 48
    :pswitch_3
    nop

    .line 1068
    new-instance p2, Lccsancom/mbridge/msdk/video/dynview/i/b;

    invoke-direct {p2}, Lccsancom/mbridge/msdk/video/dynview/i/b;-><init>()V

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/video/dynview/i/b;->a(Lccsanandroid/view/View;)V

    .line 49
    nop

    .line 60
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
