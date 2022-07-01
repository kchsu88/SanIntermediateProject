.class public Lccsancom/mbridge/msdk/mbbanner/common/c/a;
.super Ljava/lang/Object;
.source "BannerLoadManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile h:Lccsancom/mbridge/msdk/mbbanner/common/c/a;


# instance fields
.field private b:Lccsanandroid/content/Context;

.field private c:Lccsancom/mbridge/msdk/mbbanner/common/util/a;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/mbbanner/common/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsanandroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->b:Lccsanandroid/content/Context;

    .line 24
    new-instance v0, Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/mbbanner/common/util/a;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->c:Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->d:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->e:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->f:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->g:Ljava/util/Map;

    .line 49
    return-void
.end method

.method public static a()Lccsancom/mbridge/msdk/mbbanner/common/c/a;
    .locals 2

    .line 37
    sget-object v0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->h:Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->h:Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->h:Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    .line 42
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->h:Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    return-object v0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbbanner/common/c/a;)Ljava/util/Map;
    .locals 0

    .line 20
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->e:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/mbbanner/common/c/a;)Ljava/util/Map;
    .locals 0

    .line 20
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->g:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/mbbanner/common/c/a;)Lccsancom/mbridge/msdk/mbbanner/common/util/a;
    .locals 0

    .line 20
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->c:Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    return-object p0
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;Lccsancom/mbridge/msdk/mbbanner/common/b/b;)V
    .locals 4

    .line 165
    nop

    .line 166
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->g:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->g:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 166
    :cond_0
    const/4 v0, 0x0

    .line 170
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 194
    :pswitch_0
    if-nez v0, :cond_1

    .line 195
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->g:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 197
    :cond_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 198
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/os/Handler;

    .line 199
    invoke-virtual {p2, v3}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 201
    :cond_2
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 181
    :pswitch_1
    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 p1, 0x4

    if-ne v0, p1, :cond_6

    .line 182
    :cond_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->g:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {p0, p2, p3, p4, p5}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->b(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;Lccsancom/mbridge/msdk/mbbanner/common/b/b;)V

    goto :goto_1

    .line 172
    :pswitch_2
    if-ne v0, v2, :cond_6

    .line 173
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 174
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/os/Handler;

    .line 175
    invoke-virtual {p2, v3}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 177
    :cond_4
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 187
    :pswitch_3
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 188
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/os/Handler;

    .line 189
    invoke-virtual {p2, v3}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 191
    :cond_5
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    nop

    .line 205
    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/Handler;

    .line 157
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;Lccsancom/mbridge/msdk/mbbanner/common/b/b;)V
    .locals 5

    .line 54
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->b:Lccsanandroid/content/Context;

    if-nez v0, :cond_0

    .line 55
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->c:Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    const-string p3, "Banner Context == null!"

    invoke-virtual {p1, p4, p3, p2}, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->a(Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void

    .line 60
    :cond_0
    if-eqz p3, :cond_5

    if-nez p4, :cond_1

    goto/16 :goto_1

    .line 66
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a()Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    move-result-object v0

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->e:Ljava/util/Map;

    if-eqz v1, :cond_2

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->e:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->c:Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    const-string p3, "Current unit is loading!"

    invoke-virtual {p1, p4, p3, p2}, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->a(Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    monitor-exit v0

    return-void

    .line 77
    :cond_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->e:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    nop

    .line 1097
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->d:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1098
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->d:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/mbbanner/common/a/c;

    goto :goto_0

    .line 1100
    :cond_3
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    .line 1101
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Lccsancom/mbridge/msdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v1

    .line 1102
    if-nez v1, :cond_4

    .line 1103
    invoke-static {p2}, Lccsancom/mbridge/msdk/b/d;->d(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v1

    .line 1105
    :cond_4
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/d;->w()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    .line 1107
    new-instance v2, Lccsancom/mbridge/msdk/mbbanner/common/a/c;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v2, p2, v3, v4, v1}, Lccsancom/mbridge/msdk/mbbanner/common/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1108
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->d:Ljava/util/Map;

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 1110
    :goto_0
    nop

    .line 79
    nop

    .line 80
    new-instance v2, Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->b:Lccsanandroid/content/Context;

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->c:Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    invoke-direct {v2, v3, v1, p4, v4}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/mbbanner/common/a/c;Lccsancom/mbridge/msdk/mbbanner/common/b/b;Lccsancom/mbridge/msdk/mbbanner/common/util/a;)V

    .line 82
    new-instance p4, Lccsancom/mbridge/msdk/mbbanner/common/c/a$1;

    invoke-direct {p4, p0, p3}, Lccsancom/mbridge/msdk/mbbanner/common/c/a$1;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/c/a;Lccsancom/mbridge/msdk/mbbanner/common/a/b;)V

    invoke-virtual {v2, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->a(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;Lccsancom/mbridge/msdk/mbbanner/common/b/d;)V

    .line 92
    monitor-exit v0

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 61
    :cond_5
    :goto_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->c:Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    const-string p3, "Banner request parameters or callback empty!"

    invoke-virtual {p1, p4, p3, p2}, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->a(Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public final b()V
    .locals 3

    .line 208
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 209
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 212
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->e:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 213
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 216
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->f:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 217
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 219
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 220
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 222
    :cond_2
    goto :goto_0

    .line 223
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 226
    :cond_4
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->g:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 227
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 229
    :cond_5
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;Lccsancom/mbridge/msdk/mbbanner/common/b/b;)V
    .locals 8

    .line 115
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/mbbanner/common/a/b;->b()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/Handler;

    goto :goto_0

    .line 123
    :cond_1
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-direct {v0}, Lccsanandroid/os/Handler;-><init>()V

    .line 124
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :goto_0
    new-instance v7, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/c/a;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;)V

    .line 150
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 151
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/mbbanner/common/a/b;->b()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v0, v7, p1, p2}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    return-void

    .line 116
    :cond_2
    :goto_1
    return-void
.end method
