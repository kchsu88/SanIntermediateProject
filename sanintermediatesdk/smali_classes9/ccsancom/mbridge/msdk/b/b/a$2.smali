.class final Lccsancom/mbridge/msdk/b/b/a$2;
.super Ljava/lang/Object;
.source "MraidJSController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/b/b/a;
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

    .line 73
    iput-object p1, p0, Lccsancom/mbridge/msdk/b/b/a$2;->b:Lccsancom/mbridge/msdk/b/b/a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/b/b/a$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 77
    :try_start_0
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/b/c;->i:Lccsancom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/b/e;->b(Lccsancom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string v1, "mraid_js.txt"

    .line 79
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 83
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/b/a$2;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/o;->a([BLjava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MraidJSController"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void
.end method
