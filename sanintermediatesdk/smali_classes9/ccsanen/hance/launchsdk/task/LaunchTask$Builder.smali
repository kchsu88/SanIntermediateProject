.class public final Lccsanen/hance/launchsdk/task/LaunchTask$Builder;
.super Lccsanenhance/f/a$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanen/hance/launchsdk/task/LaunchTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanenhance/f/a$a<",
        "Lccsanen/hance/launchsdk/task/LaunchTask;",
        "Lccsanen/hance/launchsdk/task/LaunchTask$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanenhance/f/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public _builder()Lccsanen/hance/launchsdk/task/LaunchTask;
    .locals 2

    .line 2
    new-instance v0, Lccsanen/hance/launchsdk/task/LaunchTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsanen/hance/launchsdk/task/LaunchTask;-><init>(Lccsanen/hance/launchsdk/task/LaunchTask$Builder;Lccsanen/hance/launchsdk/task/LaunchTask$a;)V

    return-object v0
.end method

.method public bridge synthetic _builder()Lccsanenhance/f/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lccsanen/hance/launchsdk/task/LaunchTask$Builder;->_builder()Lccsanen/hance/launchsdk/task/LaunchTask;

    move-result-object v0

    return-object v0
.end method

.method public _initIntent()Lccsanenhance/b/b;
    .locals 2

    .line 1
    new-instance v0, Lccsanenhance/b/b;

    invoke-direct {v0}, Lccsanenhance/b/b;-><init>()V

    .line 2
    sget-object v1, Lccsanenhance/b/c;->a:Lccsanenhance/b/c;

    iget-object v1, v1, Lccsanenhance/b/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsanenhance/b/b;->h(Ljava/lang/String;)V

    return-object v0
.end method

.method public getThis()Lccsanen/hance/launchsdk/task/LaunchTask$Builder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getThis()Lccsanenhance/f/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lccsanen/hance/launchsdk/task/LaunchTask$Builder;->getThis()Lccsanen/hance/launchsdk/task/LaunchTask$Builder;

    move-result-object v0

    return-object v0
.end method
