.class public Lccsanenhance/f/c$c;
.super Lccsanenhance/d/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanenhance/f/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lccsanenhance/f/c;


# direct methods
.method public constructor <init>(Lccsanenhance/f/c;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsanenhance/f/c$c;->d:Lccsanenhance/f/c;

    iput-object p4, p0, Lccsanenhance/f/c$c;->c:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lccsanenhance/d/b;-><init>(J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsanenhance/f/c$c;->d:Lccsanenhance/f/c;

    iget-object v0, v0, Lccsanenhance/f/b;->a:Lccsanenhance/b/b;

    invoke-virtual {v0}, Lccsanenhance/b/b;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanenhance/b/c;->a(Ljava/lang/String;)Lccsanenhance/b/c;

    move-result-object v0

    .line 2
    sget-object v1, Lccsanenhance/b/c;->f:Lccsanenhance/b/c;

    if-ne v0, v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lccsanenhance/f/c$c;->d:Lccsanenhance/f/c;

    iget-object v2, p0, Lccsanenhance/f/c$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lccsanenhance/f/c;->c(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launch result unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanenhance/f/c$c;->d:Lccsanenhance/f/c;

    iget-object v1, v1, Lccsanenhance/f/b;->a:Lccsanenhance/b/b;

    invoke-virtual {v1}, Lccsanenhance/b/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanenhance/g/e;->a(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lccsanenhance/f/c$c;->d:Lccsanenhance/f/c;

    iget-object v0, v0, Lccsanenhance/f/b;->a:Lccsanenhance/b/b;

    invoke-virtual {v0, v2, v3}, Lccsanenhance/b/b;->d(J)V

    .line 13
    iget-object v0, p0, Lccsanenhance/f/c$c;->d:Lccsanenhance/f/c;

    iget-object v0, v0, Lccsanenhance/f/b;->a:Lccsanenhance/b/b;

    iget-object v1, v1, Lccsanenhance/b/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsanenhance/b/b;->h(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lccsanenhance/b/a;->a()Lccsanenhance/b/a;

    move-result-object v0

    iget-object v1, p0, Lccsanenhance/f/c$c;->d:Lccsanenhance/f/c;

    iget-object v1, v1, Lccsanenhance/f/b;->a:Lccsanenhance/b/b;

    invoke-virtual {v0, v1}, Lccsanenhance/b/a;->b(Lccsanenhance/b/b;)Z

    .line 16
    iget-object v0, p0, Lccsanenhance/f/c$c;->d:Lccsanenhance/f/c;

    iget-object v0, v0, Lccsanenhance/f/b;->a:Lccsanenhance/b/b;

    invoke-static {v0}, Lccsanenhance/a/f;->b(Lccsanenhance/b/b;)V

    .line 18
    iget-object v0, p0, Lccsanenhance/f/c$c;->c:Ljava/lang/String;

    invoke-static {v0}, Lccsanenhance/f/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 20
    new-instance v1, Lccsanenhance/c/a;

    invoke-direct {v1, v0}, Lccsanenhance/c/a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsanenhance/c/b;->a(Lccsanenhance/c/a;)V

    :goto_0
    return-void
.end method
