.class final Lccsancom/mbridge/msdk/b/b/a$1;
.super Lccsancom/mbridge/msdk/foundation/same/net/b/a;
.source "MraidJSController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/b/b/a;->a(Lccsanandroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lccsancom/mbridge/msdk/b/b/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/b/b/a;Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lccsancom/mbridge/msdk/b/b/a$1;->b:Lccsancom/mbridge/msdk/b/b/a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/b/b/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/net/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/b/a$1;->b:Lccsancom/mbridge/msdk/b/b/a;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/b/b/a;->a(Lccsancom/mbridge/msdk/b/b/a;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/b/a$1;->b:Lccsancom/mbridge/msdk/b/b/a;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/b/b/a;->b(Lccsancom/mbridge/msdk/b/b/a;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/b/b/a$1;->a:Ljava/lang/String;

    const-string v1, "MraidJSController"

    invoke-virtual {p1, v1, v0}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 65
    return-void
.end method
