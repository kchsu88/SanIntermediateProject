.class final Lccsancom/mbridge/msdk/mbbanner/common/c/a$1;
.super Ljava/lang/Object;
.source "BannerLoadManager.java"

# interfaces
.implements Lccsancom/mbridge/msdk/mbbanner/common/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;Lccsancom/mbridge/msdk/mbbanner/common/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/mbbanner/common/a/b;

.field final synthetic b:Lccsancom/mbridge/msdk/mbbanner/common/c/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbbanner/common/c/a;Lccsancom/mbridge/msdk/mbbanner/common/a/b;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$1;->b:Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/common/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 85
    invoke-static {}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a()Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    move-result-object v0

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/common/a/b;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/mbbanner/common/a/b;->a(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$1;->b:Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a(Lccsancom/mbridge/msdk/mbbanner/common/c/a;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    monitor-exit v0

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
