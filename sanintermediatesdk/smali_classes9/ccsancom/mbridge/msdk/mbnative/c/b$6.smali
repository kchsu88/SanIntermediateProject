.class final Lccsancom/mbridge/msdk/mbnative/c/b$6;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/e/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/view/View;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/mbnative/c/b$f;

.field final synthetic b:Lccsancom/mbridge/msdk/mbnative/c/b;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbnative/c/b;Lccsancom/mbridge/msdk/mbnative/c/b$f;)V
    .locals 0

    .line 1023
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$6;->b:Lccsancom/mbridge/msdk/mbnative/c/b;

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$6;->a:Lccsancom/mbridge/msdk/mbnative/c/b$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lccsancom/mbridge/msdk/foundation/same/e/a$a;)V
    .locals 1

    .line 1026
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/e/a$a;->e:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    if-ne p1, v0, :cond_0

    .line 1027
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$6;->b:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->h(Lccsancom/mbridge/msdk/mbnative/c/b;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$6;->b:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->h(Lccsancom/mbridge/msdk/mbnative/c/b;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$6;->b:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->h(Lccsancom/mbridge/msdk/mbnative/c/b;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$6;->a:Lccsancom/mbridge/msdk/mbnative/c/b$f;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1028
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$6;->b:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->h(Lccsancom/mbridge/msdk/mbnative/c/b;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$6;->a:Lccsancom/mbridge/msdk/mbnative/c/b$f;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1031
    :cond_0
    return-void
.end method
