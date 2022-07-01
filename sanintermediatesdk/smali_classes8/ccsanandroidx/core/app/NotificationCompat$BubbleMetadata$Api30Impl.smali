.class Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Api30Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api30Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7083
    return-void
.end method

.method static fromPlatform(Lccsanandroid/app/Notification$BubbleMetadata;)Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;
    .locals 4
    .param p0, "platformMetadata"    # Lccsanandroid/app/Notification$BubbleMetadata;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "platformMetadata"
        }
    .end annotation

    .line 7137
    if-nez p0, :cond_0

    .line 7138
    const/4 v0, 0x0

    return-object v0

    .line 7141
    :cond_0
    const/4 v0, 0x0

    .line 7142
    .local v0, "compatBuilder":Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    invoke-virtual {p0}, Lccsanandroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7143
    new-instance v1, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    invoke-virtual {p0}, Lccsanandroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 7145
    :cond_1
    new-instance v1, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    invoke-virtual {p0}, Lccsanandroid/app/Notification$BubbleMetadata;->getIntent()Lccsanandroid/app/PendingIntent;

    move-result-object v2

    .line 7146
    invoke-virtual {p0}, Lccsanandroid/app/Notification$BubbleMetadata;->getIcon()Lccsanandroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-static {v3}, Lccsanandroidx/core/graphics/drawable/IconCompat;->createFromIcon(Lccsanandroid/graphics/drawable/Icon;)Lccsanandroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;-><init>(Lccsanandroid/app/PendingIntent;Lccsanandroidx/core/graphics/drawable/IconCompat;)V

    move-object v0, v1

    .line 7148
    :goto_0
    nop

    .line 7149
    invoke-virtual {p0}, Lccsanandroid/app/Notification$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v1

    .line 7150
    invoke-virtual {p0}, Lccsanandroid/app/Notification$BubbleMetadata;->getDeleteIntent()Lccsanandroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setDeleteIntent(Lccsanandroid/app/PendingIntent;)Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v1

    .line 7152
    invoke-virtual {p0}, Lccsanandroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v2

    .line 7151
    invoke-virtual {v1, v2}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setSuppressNotification(Z)Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    .line 7154
    invoke-virtual {p0}, Lccsanandroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    if-eqz v1, :cond_2

    .line 7155
    invoke-virtual {p0}, Lccsanandroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setDesiredHeight(I)Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    .line 7158
    :cond_2
    invoke-virtual {p0}, Lccsanandroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v1

    if-eqz v1, :cond_3

    .line 7159
    invoke-virtual {p0}, Lccsanandroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setDesiredHeightResId(I)Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    .line 7162
    :cond_3
    invoke-virtual {v0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->build()Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;

    move-result-object v1

    return-object v1
.end method

.method static toPlatform(Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;)Lccsanandroid/app/Notification$BubbleMetadata;
    .locals 4
    .param p0, "compatMetadata"    # Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compatMetadata"
        }
    .end annotation

    .line 7096
    if-nez p0, :cond_0

    .line 7097
    const/4 v0, 0x0

    return-object v0

    .line 7100
    :cond_0
    const/4 v0, 0x0

    .line 7101
    .local v0, "platformMetadataBuilder":Lccsanandroid/app/Notification$BubbleMetadata$Builder;
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7102
    new-instance v1, Lccsanandroid/app/Notification$BubbleMetadata$Builder;

    .line 7103
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/app/Notification$BubbleMetadata$Builder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 7105
    :cond_1
    new-instance v1, Lccsanandroid/app/Notification$BubbleMetadata$Builder;

    .line 7107
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->getIntent()Lccsanandroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->getIcon()Lccsanandroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    invoke-virtual {v3}, Lccsanandroidx/core/graphics/drawable/IconCompat;->toIcon()Lccsanandroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lccsanandroid/app/Notification$BubbleMetadata$Builder;-><init>(Lccsanandroid/app/PendingIntent;Lccsanandroid/graphics/drawable/Icon;)V

    move-object v0, v1

    .line 7109
    :goto_0
    nop

    .line 7110
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->getDeleteIntent()Lccsanandroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/app/Notification$BubbleMetadata$Builder;->setDeleteIntent(Lccsanandroid/app/PendingIntent;)Lccsanandroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v1

    .line 7111
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/app/Notification$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Lccsanandroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v1

    .line 7112
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/app/Notification$BubbleMetadata$Builder;->setSuppressNotification(Z)Lccsanandroid/app/Notification$BubbleMetadata$Builder;

    .line 7114
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    if-eqz v1, :cond_2

    .line 7115
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeight(I)Lccsanandroid/app/Notification$BubbleMetadata$Builder;

    .line 7118
    :cond_2
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeightResId()I

    move-result v1

    if-eqz v1, :cond_3

    .line 7119
    nop

    .line 7120
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeightResId()I

    move-result v1

    .line 7119
    invoke-virtual {v0, v1}, Lccsanandroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeightResId(I)Lccsanandroid/app/Notification$BubbleMetadata$Builder;

    .line 7123
    :cond_3
    invoke-virtual {v0}, Lccsanandroid/app/Notification$BubbleMetadata$Builder;->build()Lccsanandroid/app/Notification$BubbleMetadata;

    move-result-object v1

    return-object v1
.end method
