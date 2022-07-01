.class public final Lccsanen/hance/launchsdk/task/LaunchTask;
.super Lccsanenhance/f/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanen/hance/launchsdk/task/LaunchTask$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lccsanen/hance/launchsdk/task/LaunchTask$Builder;)V
    .locals 1

    .line 2
    iget-object v0, p1, Lccsanenhance/f/a$a;->taskId:Ljava/util/UUID;

    iget-object p1, p1, Lccsanenhance/f/a$a;->taskIntent:Lccsanenhance/b/b;

    invoke-direct {p0, v0, p1}, Lccsanenhance/f/a;-><init>(Ljava/util/UUID;Lccsanenhance/b/b;)V

    return-void
.end method

.method public synthetic constructor <init>(Lccsanen/hance/launchsdk/task/LaunchTask$Builder;Lccsanen/hance/launchsdk/task/LaunchTask$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsanen/hance/launchsdk/task/LaunchTask;-><init>(Lccsanen/hance/launchsdk/task/LaunchTask$Builder;)V

    return-void
.end method
