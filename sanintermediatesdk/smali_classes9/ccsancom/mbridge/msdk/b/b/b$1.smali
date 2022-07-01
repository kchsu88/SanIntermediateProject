.class final Lccsancom/mbridge/msdk/b/b/b$1;
.super Lccsancom/mbridge/msdk/foundation/same/net/b/a;
.source "WebEnvCheckController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/b/b/b;->a(Lccsanandroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lccsancom/mbridge/msdk/b/b/b;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/b/b/b;Ljava/lang/String;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lccsancom/mbridge/msdk/b/b/b$1;->b:Lccsancom/mbridge/msdk/b/b/b;

    iput-object p2, p0, Lccsancom/mbridge/msdk/b/b/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/net/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 637
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/b/b$1;->b:Lccsancom/mbridge/msdk/b/b/b;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/b/b/b;->a(Lccsancom/mbridge/msdk/b/b/b;Ljava/lang/String;)Ljava/lang/String;

    .line 639
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/b/b$1;->b:Lccsancom/mbridge/msdk/b/b/b;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/b/b/b;->b(Lccsancom/mbridge/msdk/b/b/b;Ljava/lang/String;)V

    .line 640
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object p1

    invoke-static {}, Lccsancom/mbridge/msdk/b/b/b;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/b/b/b$1;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 646
    return-void
.end method
