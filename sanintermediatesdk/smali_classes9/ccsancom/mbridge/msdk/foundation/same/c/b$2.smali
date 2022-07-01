.class final Lccsancom/mbridge/msdk/foundation/same/c/b$2;
.super Ljava/lang/Object;
.source "CommonImageLoader.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lccsancom/mbridge/msdk/foundation/same/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/same/c/b;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/same/c/b;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/c/b$2;->a:Lccsancom/mbridge/msdk/foundation/same/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 194
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/c/b$2;->a:Lccsancom/mbridge/msdk/foundation/same/c/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/c/b;->b(Lccsancom/mbridge/msdk/foundation/same/c/b;)Lccsanandroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Handler;->obtainMessage()Lccsanandroid/os/Message;

    move-result-object v0

    .line 195
    const/4 v1, 0x1

    iput v1, v0, Lccsanandroid/os/Message;->what:I

    .line 196
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 197
    const-string v2, "message_key"

    invoke-virtual {v1, v2, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string p1, "message_bitmap"

    invoke-virtual {v1, p1, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, v1}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 200
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/c/b$2;->a:Lccsancom/mbridge/msdk/foundation/same/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->b(Lccsancom/mbridge/msdk/foundation/same/c/b;)Lccsanandroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 201
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 205
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/c/b$2;->a:Lccsancom/mbridge/msdk/foundation/same/c/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/c/b;->b(Lccsancom/mbridge/msdk/foundation/same/c/b;)Lccsanandroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Handler;->obtainMessage()Lccsanandroid/os/Message;

    move-result-object v0

    .line 206
    const/4 v1, 0x2

    iput v1, v0, Lccsanandroid/os/Message;->what:I

    .line 207
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 208
    const-string v2, "message_key"

    invoke-virtual {v1, v2, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string p1, "message_message"

    invoke-virtual {v1, p1, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, v1}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 211
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/c/b$2;->a:Lccsancom/mbridge/msdk/foundation/same/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->b(Lccsancom/mbridge/msdk/foundation/same/c/b;)Lccsanandroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 212
    return-void
.end method
