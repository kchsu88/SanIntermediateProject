.class public Lccsanenhance/f/c$b;
.super Lccsanenhance/d/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanenhance/f/c;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lccsanenhance/f/c;


# direct methods
.method public constructor <init>(Lccsanenhance/f/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsanenhance/f/c$b;->c:Lccsanenhance/f/c;

    invoke-direct {p0}, Lccsanenhance/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsanenhance/f/c$b;->c:Lccsanenhance/f/c;

    iget-object v0, v0, Lccsanenhance/f/b;->a:Lccsanenhance/b/b;

    sget-object v1, Lccsanenhance/b/c;->d:Lccsanenhance/b/c;

    iget-object v1, v1, Lccsanenhance/b/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsanenhance/b/b;->h(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lccsanenhance/b/a;->a()Lccsanenhance/b/a;

    move-result-object v0

    iget-object v1, p0, Lccsanenhance/f/c$b;->c:Lccsanenhance/f/c;

    iget-object v1, v1, Lccsanenhance/f/b;->a:Lccsanenhance/b/b;

    invoke-virtual {v0, v1}, Lccsanenhance/b/a;->b(Lccsanenhance/b/b;)Z

    .line 4
    iget-object v0, p0, Lccsanenhance/f/c$b;->c:Lccsanenhance/f/c;

    iget-object v0, v0, Lccsanenhance/f/b;->a:Lccsanenhance/b/b;

    invoke-static {v0}, Lccsanenhance/a/f;->c(Lccsanenhance/b/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    new-instance v1, Lccsanenhance/c/a;

    invoke-direct {v1, v0}, Lccsanenhance/c/a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsanenhance/c/b;->a(Lccsanenhance/c/a;)V

    :goto_0
    return-void
.end method
