.class public Lccsanenhance/f/c$d;
.super Lccsanenhance/d/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanenhance/f/c;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsanenhance/f/c$d;->c:Ljava/util/List;

    iput-object p2, p0, Lccsanenhance/f/c$d;->d:Ljava/lang/String;

    iput-object p3, p0, Lccsanenhance/f/c$d;->e:Ljava/lang/String;

    invoke-direct {p0}, Lccsanenhance/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsanenhance/f/c$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanen/hance/launchsdk/ICallback;

    .line 2
    iget-object v2, p0, Lccsanenhance/f/c$d;->d:Ljava/lang/String;

    iget-object v3, p0, Lccsanenhance/f/c$d;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lccsanen/hance/launchsdk/ICallback;->onLaunchAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
