.class Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerRecord"
.end annotation


# instance fields
.field bound:Z

.field final componentName:Lccsanandroid/content/ComponentName;

.field retryCount:I

.field service:Lccsanandroid/support/v4/app/INotificationSideChannel;

.field taskQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lccsanandroidx/core/app/NotificationManagerCompat$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsanandroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Lccsanandroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentName"
        }
    .end annotation

    .line 957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 949
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    .line 953
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/ArrayDeque;

    .line 955
    iput v0, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    .line 958
    iput-object p1, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Lccsanandroid/content/ComponentName;

    .line 959
    return-void
.end method
