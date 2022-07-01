.class public Lccsanenhance/a/e$b;
.super Lccsanenhance/d/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanenhance/a/e;->a(Lccsanenhance/f/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lccsanenhance/f/a;

.field public final synthetic d:Lccsanenhance/a/e;


# direct methods
.method public constructor <init>(Lccsanenhance/a/e;Lccsanenhance/f/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsanenhance/a/e$b;->d:Lccsanenhance/a/e;

    iput-object p2, p0, Lccsanenhance/a/e$b;->c:Lccsanenhance/f/a;

    invoke-direct {p0}, Lccsanenhance/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsanenhance/a/e$b;->d:Lccsanenhance/a/e;

    iget-object v1, p0, Lccsanenhance/a/e$b;->c:Lccsanenhance/f/a;

    invoke-static {v0, v1}, Lccsanenhance/a/e;->a(Lccsanenhance/a/e;Lccsanenhance/f/a;)Lccsanenhance/b/b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lccsanenhance/a/e$b;->d:Lccsanenhance/a/e;

    invoke-static {v1, v0}, Lccsanenhance/a/e;->a(Lccsanenhance/a/e;Lccsanenhance/b/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    new-instance v1, Lccsanenhance/c/a;

    invoke-direct {v1, v0}, Lccsanenhance/c/a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsanenhance/c/b;->a(Lccsanenhance/c/a;)V

    :goto_0
    return-void
.end method
