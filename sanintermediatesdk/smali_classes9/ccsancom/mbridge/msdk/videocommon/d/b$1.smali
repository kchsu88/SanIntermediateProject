.class final Lccsancom/mbridge/msdk/videocommon/d/b$1;
.super Ljava/lang/Object;
.source "RewardSettingManager.java"

# interfaces
.implements Lccsancom/mbridge/msdk/videocommon/download/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/videocommon/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lccsancom/mbridge/msdk/videocommon/d/b;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/videocommon/d/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/d/b$1;->c:Lccsancom/mbridge/msdk/videocommon/d/b;

    iput-object p2, p0, Lccsancom/mbridge/msdk/videocommon/d/b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/mbridge/msdk/videocommon/d/b$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 217
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/b$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/d/b$1;->b:Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {p1, v0, v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 222
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/b$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/d/b$1;->b:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, p2}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    return-void
.end method
