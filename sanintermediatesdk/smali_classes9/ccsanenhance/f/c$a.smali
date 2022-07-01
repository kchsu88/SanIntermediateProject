.class public Lccsanenhance/f/c$a;
.super Lccsanenhance/d/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanenhance/f/c;->d()Lccsanenhance/f/c$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lccsanenhance/f/c;


# direct methods
.method public constructor <init>(Lccsanenhance/f/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsanenhance/f/c$a;->d:Lccsanenhance/f/c;

    invoke-direct {p0}, Lccsanenhance/d/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lccsanenhance/f/c$a;->d:Lccsanenhance/f/c;

    iget-object v3, v2, Lccsanenhance/f/b;->a:Lccsanenhance/b/b;

    invoke-virtual {v3}, Lccsanenhance/b/b;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsanenhance/f/c;->a(Lccsanenhance/f/c;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lccsanenhance/f/c$a;->d:Lccsanenhance/f/c;

    iget-object v3, v2, Lccsanenhance/f/b;->a:Lccsanenhance/b/b;

    invoke-virtual {v2, v3, p1, v0, v1}, Lccsanenhance/f/c;->a(Lccsanenhance/b/b;Ljava/lang/String;J)V

    .line 6
    iget-object p1, p0, Lccsanenhance/f/c$a;->d:Lccsanenhance/f/c;

    invoke-static {p1}, Lccsanenhance/f/c;->a(Lccsanenhance/f/c;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lccsanenhance/f/c$a;->d:Lccsanenhance/f/c;

    invoke-static {p1}, Lccsanenhance/f/c;->b(Lccsanenhance/f/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    new-instance v0, Lccsanenhance/c/a;

    invoke-direct {v0, p1}, Lccsanenhance/c/a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lccsanenhance/c/b;->a(Lccsanenhance/c/a;)V

    :goto_0
    return-void
.end method
