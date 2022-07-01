.class public Lccsanenhance/f/c$f;
.super Lccsanenhance/d/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanenhance/f/c;->a(Lccsanenhance/b/b;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lccsanenhance/b/b;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:J

.field public final synthetic f:Lccsanenhance/f/c;


# direct methods
.method public constructor <init>(Lccsanenhance/f/c;Lccsanenhance/b/b;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsanenhance/f/c$f;->f:Lccsanenhance/f/c;

    iput-object p2, p0, Lccsanenhance/f/c$f;->c:Lccsanenhance/b/b;

    iput-object p3, p0, Lccsanenhance/f/c$f;->d:Ljava/lang/String;

    iput-wide p4, p0, Lccsanenhance/f/c$f;->e:J

    invoke-direct {p0}, Lccsanenhance/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsanenhance/f/c$f;->c:Lccsanenhance/b/b;

    iget-object v1, p0, Lccsanenhance/f/c$f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsanenhance/b/b;->b(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsanenhance/f/c$f;->c:Lccsanenhance/b/b;

    iget-wide v1, p0, Lccsanenhance/f/c$f;->e:J

    invoke-virtual {v0, v1, v2}, Lccsanenhance/b/b;->c(J)V

    .line 3
    iget-object v0, p0, Lccsanenhance/f/c$f;->c:Lccsanenhance/b/b;

    sget-object v1, Lccsanenhance/b/c;->e:Lccsanenhance/b/c;

    iget-object v1, v1, Lccsanenhance/b/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsanenhance/b/b;->h(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lccsanenhance/b/a;->a()Lccsanenhance/b/a;

    move-result-object v0

    iget-object v1, p0, Lccsanenhance/f/c$f;->c:Lccsanenhance/b/b;

    invoke-virtual {v0, v1}, Lccsanenhance/b/a;->b(Lccsanenhance/b/b;)Z

    .line 6
    iget-object v0, p0, Lccsanenhance/f/c$f;->c:Lccsanenhance/b/b;

    invoke-static {v0}, Lccsanenhance/a/f;->a(Lccsanenhance/b/b;)V

    .line 8
    iget-object v0, p0, Lccsanenhance/f/c$f;->c:Lccsanenhance/b/b;

    invoke-virtual {v0}, Lccsanenhance/b/b;->m()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsanenhance/f/c$f;->c:Lccsanenhance/b/b;

    invoke-virtual {v1}, Lccsanenhance/b/b;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanenhance/f/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    new-instance v1, Lccsanenhance/c/a;

    invoke-direct {v1, v0}, Lccsanenhance/c/a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsanenhance/c/b;->a(Lccsanenhance/c/a;)V

    :goto_0
    return-void
.end method
