.class final Lccsancom/mbridge/msdk/foundation/controller/b$2;
.super Ljava/lang/Object;
.source "SDKController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/controller/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/controller/b;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/controller/b;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/b$2;->a:Lccsancom/mbridge/msdk/foundation/controller/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 187
    invoke-static {}, Lccsanandroid/os/Looper;->prepare()V

    .line 188
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/b$2;->a:Lccsancom/mbridge/msdk/foundation/controller/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/controller/b;->a(Lccsancom/mbridge/msdk/foundation/controller/b;)V

    .line 189
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/b$2;->a:Lccsancom/mbridge/msdk/foundation/controller/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/controller/b;->b(Lccsancom/mbridge/msdk/foundation/controller/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/b;->a(Lccsancom/mbridge/msdk/foundation/controller/b;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lccsanandroid/os/Looper;->loop()V

    .line 191
    return-void
.end method
