.class final Lccsancom/mbridge/msdk/foundation/same/e/b$1;
.super Ljava/lang/Object;
.source "CommonTaskLoader.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/e/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/same/e/b;->b(Lccsancom/mbridge/msdk/foundation/same/e/a;Lccsancom/mbridge/msdk/foundation/same/e/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/same/e/a;

.field final synthetic b:Lccsancom/mbridge/msdk/foundation/same/e/a$b;

.field final synthetic c:Lccsancom/mbridge/msdk/foundation/same/e/b;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/same/e/b;Lccsancom/mbridge/msdk/foundation/same/e/a;Lccsancom/mbridge/msdk/foundation/same/e/a$b;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/e/b$1;->c:Lccsancom/mbridge/msdk/foundation/same/e/b;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/e/b$1;->a:Lccsancom/mbridge/msdk/foundation/same/e/a;

    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/same/e/b$1;->b:Lccsancom/mbridge/msdk/foundation/same/e/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lccsancom/mbridge/msdk/foundation/same/e/a$a;)V
    .locals 3

    .line 74
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/e/a$a;->d:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    if-ne p1, v0, :cond_0

    .line 75
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/e/b$1;->c:Lccsancom/mbridge/msdk/foundation/same/e/b;

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/same/e/b;->b:Ljava/util/HashMap;

    .line 1034
    sget-wide v1, Lccsancom/mbridge/msdk/foundation/same/e/a;->b:J

    .line 75
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/e/a$a;->e:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    if-ne p1, v0, :cond_1

    .line 77
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/e/b$1;->c:Lccsancom/mbridge/msdk/foundation/same/e/b;

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/same/e/b;->b:Ljava/util/HashMap;

    .line 2034
    sget-wide v1, Lccsancom/mbridge/msdk/foundation/same/e/a;->b:J

    .line 77
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    :cond_1
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/e/a$a;->b:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    if-ne p1, v0, :cond_2

    .line 79
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/e/b$1;->c:Lccsancom/mbridge/msdk/foundation/same/e/b;

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/same/e/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/Context;

    .line 80
    if-nez v0, :cond_2

    .line 81
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/e/b$1;->c:Lccsancom/mbridge/msdk/foundation/same/e/b;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/e/b;->a()V

    .line 84
    :cond_2
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/e/b$1;->b:Lccsancom/mbridge/msdk/foundation/same/e/a$b;

    if-eqz v0, :cond_3

    .line 85
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/e/a$b;->a(Lccsancom/mbridge/msdk/foundation/same/e/a$a;)V

    .line 87
    :cond_3
    return-void
.end method
