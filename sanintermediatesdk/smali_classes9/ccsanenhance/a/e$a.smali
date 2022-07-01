.class public Lccsanenhance/a/e$a;
.super Lccsanenhance/d/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanenhance/a/e;->a(Lccsanenhance/a/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lccsanenhance/a/g;

.field public final synthetic d:Lccsanenhance/a/e;


# direct methods
.method public constructor <init>(Lccsanenhance/a/e;Lccsanenhance/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsanenhance/a/e$a;->d:Lccsanenhance/a/e;

    iput-object p2, p0, Lccsanenhance/a/e$a;->c:Lccsanenhance/a/g;

    invoke-direct {p0}, Lccsanenhance/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lccsanenhance/a/a;->c()I

    move-result v0

    .line 2
    iget-object v1, p0, Lccsanenhance/a/e$a;->c:Lccsanenhance/a/g;

    iget v2, v1, Lccsanenhance/a/g;->g:I

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsanenhance/a/e$a;->c:Lccsanenhance/a/g;

    iget-object v2, v2, Lccsanenhance/a/g;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not allowed,triggerSceneType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanenhance/g/e;->a(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lccsanenhance/a/e$a;->d:Lccsanenhance/a/e;

    invoke-static {v0, v1}, Lccsanenhance/a/e;->a(Lccsanenhance/a/e;Lccsanenhance/a/g;)Lccsanenhance/b/b;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 11
    :cond_1
    iget-object v1, p0, Lccsanenhance/a/e$a;->d:Lccsanenhance/a/e;

    invoke-static {v1, v0}, Lccsanenhance/a/e;->a(Lccsanenhance/a/e;Lccsanenhance/b/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 13
    new-instance v1, Lccsanenhance/c/a;

    invoke-direct {v1, v0}, Lccsanenhance/c/a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsanenhance/c/b;->a(Lccsanenhance/c/a;)V

    :goto_0
    return-void
.end method
