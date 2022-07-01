.class public abstract Lccsancom/iab/omid/library/vungle/walking/a/b;
.super Lccsanandroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/iab/omid/library/vungle/walking/a/b$b;,
        Lccsancom/iab/omid/library/vungle/walking/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lccsancom/iab/omid/library/vungle/walking/a/b$a;

.field protected final d:Lccsancom/iab/omid/library/vungle/walking/a/b$b;


# direct methods
.method public constructor <init>(Lccsancom/iab/omid/library/vungle/walking/a/b$b;)V
    .locals 0

    invoke-direct {p0}, Lccsanandroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lccsancom/iab/omid/library/vungle/walking/a/b;->d:Lccsancom/iab/omid/library/vungle/walking/a/b$b;

    return-void
.end method


# virtual methods
.method public a(Lccsancom/iab/omid/library/vungle/walking/a/b$a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/iab/omid/library/vungle/walking/a/b;->a:Lccsancom/iab/omid/library/vungle/walking/a/b$a;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lccsancom/iab/omid/library/vungle/walking/a/b;->a:Lccsancom/iab/omid/library/vungle/walking/a/b$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lccsancom/iab/omid/library/vungle/walking/a/b$a;->a(Lccsancom/iab/omid/library/vungle/walking/a/b;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lccsancom/iab/omid/library/vungle/walking/a/b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lccsanandroid/os/AsyncTask;

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lccsancom/iab/omid/library/vungle/walking/a/b;->a(Ljava/lang/String;)V

    return-void
.end method
