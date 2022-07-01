.class final Lccsancom/mbridge/msdk/mbnative/c/b$e;
.super Lccsanandroid/os/Handler;
.source "NativeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbnative/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/mbridge/msdk/mbnative/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/mbnative/c/b;)V
    .locals 1

    .line 153
    invoke-direct {p0}, Lccsanandroid/os/Handler;-><init>()V

    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$e;->a:Ljava/lang/ref/WeakReference;

    .line 155
    return-void
.end method


# virtual methods
.method public final handleMessage(Lccsanandroid/os/Message;)V
    .locals 3

    .line 159
    invoke-super {p0, p1}, Lccsanandroid/os/Handler;->handleMessage(Lccsanandroid/os/Message;)V

    .line 161
    :try_start_0
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$e;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/mbnative/c/b;

    .line 164
    if-eqz v0, :cond_0

    .line 165
    invoke-static {v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsancom/mbridge/msdk/foundation/same/report/c;

    move-result-object v0

    iget v1, p1, Lccsanandroid/os/Message;->arg1:I

    iget-object v2, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/same/report/c;->a(ILjava/lang/String;)V

    .line 169
    :cond_0
    iget p1, p1, Lccsanandroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 170
    const/4 p1, 0x0

    .line 171
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$e;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 172
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/mbnative/c/b;

    .line 174
    :cond_1
    if-eqz p1, :cond_3

    .line 175
    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/mbnative/c/b;Z)Z

    .line 176
    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(Lccsancom/mbridge/msdk/mbnative/c/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->c(Lccsancom/mbridge/msdk/mbnative/c/b;)I

    move-result v1

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->d(Lccsancom/mbridge/msdk/mbnative/c/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 177
    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->e(Lccsancom/mbridge/msdk/mbnative/c/b;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    return-void

    .line 180
    :cond_2
    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/mbnative/c/b;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_3
    goto :goto_0

    .line 183
    :catch_0
    move-exception p1

    .line 184
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void
.end method
