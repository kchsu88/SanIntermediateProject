.class Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Api29Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7000
    return-void
.end method

.method static fromPlatform(Lccsanandroid/app/Notification$BubbleMetadata;)Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;
    .locals 3
    .param p0, "platformMetadata"    # Lccsanandroid/app/Notification$BubbleMetadata;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "platformMetadata"
        }
    .end annotation

    .line 7052
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 7053
    return-object v0

    .line 7055
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/app/Notification$BubbleMetadata;->getIntent()Lccsanandroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7057
    return-object v0

    .line 7059
    :cond_1
    new-instance v0, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    .line 7060
    invoke-virtual {p0}, Lccsanandroid/app/Notification$BubbleMetadata;->getIntent()Lccsanandroid/app/PendingIntent;

    move-result-object v1

    .line 7061
    invoke-virtual {p0}, Lccsanandroid/app/Notification$BubbleMetadata;->getIcon()Lccsanandroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-static {v2}, Lccsanandroidx/core/graphics/drawable/IconCompat;->createFromIcon(Lccsanandroid/graphics/drawable/Icon;)Lccsanandroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;-><init>(Lccsanandroid/app/PendingIntent;Lccsanandroidx/core/graphics/drawable/IconCompat;)V

    .line 7062
    invoke-virtual {p0}, Lccsanandroid/app/Notification$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v0

    .line 7063
    invoke-virtual {p0}, Lccsanandroid/app/Notification$BubbleMetadata;->getDeleteIntent()Lccsanandroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setDeleteIntent(Lccsanandroid/app/PendingIntent;)Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v0

    .line 7065
    invoke-virtual {p0}, Lccsanandroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v1

    .line 7064
    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setSuppressNotification(Z)Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v0

    .line 7067
    .local v0, "compatBuilder":Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    invoke-virtual {p0}, Lccsanandroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    if-eqz v1, :cond_2

    .line 7068
    invoke-virtual {p0}, Lccsanandroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setDesiredHeight(I)Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    .line 7071
    :cond_2
    invoke-virtual {p0}, Lccsanandroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v1

    if-eqz v1, :cond_3

    .line 7072
    invoke-virtual {p0}, Lccsanandroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setDesiredHeightResId(I)Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    .line 7075
    :cond_3
    invoke-virtual {v0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->build()Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;

    move-result-object v1

    return-object v1
.end method

.method static toPlatform(Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;)Lccsanandroid/app/Notification$BubbleMetadata;
    .locals 2
    .param p0, "compatMetadata"    # Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compatMetadata"
        }
    .end annotation

    .line 7013
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 7014
    return-object v0

    .line 7016
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->getIntent()Lccsanandroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7018
    return-object v0

    .line 7021
    :cond_1
    new-instance v0, Lccsanandroid/app/Notification$BubbleMetadata$Builder;

    invoke-direct {v0}, Lccsanandroid/app/Notification$BubbleMetadata$Builder;-><init>()V

    .line 7023
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->getIcon()Lccsanandroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroidx/core/graphics/drawable/IconCompat;->toIcon()Lccsanandroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/app/Notification$BubbleMetadata$Builder;->setIcon(Lccsanandroid/graphics/drawable/Icon;)Lccsanandroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 7024
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->getIntent()Lccsanandroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/app/Notification$BubbleMetadata$Builder;->setIntent(Lccsanandroid/app/PendingIntent;)Lccsanandroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 7025
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->getDeleteIntent()Lccsanandroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/app/Notification$BubbleMetadata$Builder;->setDeleteIntent(Lccsanandroid/app/PendingIntent;)Lccsanandroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 7026
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/app/Notification$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Lccsanandroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 7027
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/app/Notification$BubbleMetadata$Builder;->setSuppressNotification(Z)Lccsanandroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 7029
    .local v0, "platformMetadataBuilder":Lccsanandroid/app/Notification$BubbleMetadata$Builder;
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    if-eqz v1, :cond_2

    .line 7030
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeight(I)Lccsanandroid/app/Notification$BubbleMetadata$Builder;

    .line 7033
    :cond_2
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeightResId()I

    move-result v1

    if-eqz v1, :cond_3

    .line 7034
    nop

    .line 7035
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeightResId()I

    move-result v1

    .line 7034
    invoke-virtual {v0, v1}, Lccsanandroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeightResId(I)Lccsanandroid/app/Notification$BubbleMetadata$Builder;

    .line 7038
    :cond_3
    invoke-virtual {v0}, Lccsanandroid/app/Notification$BubbleMetadata$Builder;->build()Lccsanandroid/app/Notification$BubbleMetadata;

    move-result-object v1

    return-object v1
.end method
