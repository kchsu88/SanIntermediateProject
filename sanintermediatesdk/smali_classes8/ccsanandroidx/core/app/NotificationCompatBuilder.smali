.class Lccsanandroidx/core/app/NotificationCompatBuilder;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"

# interfaces
.implements Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;


# instance fields
.field private final mActionExtrasList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mBigContentView:Lccsanandroid/widget/RemoteViews;

.field private final mBuilder:Lccsanandroid/app/Notification$Builder;

.field private final mBuilderCompat:Lccsanandroidx/core/app/NotificationCompat$Builder;

.field private mContentView:Lccsanandroid/widget/RemoteViews;

.field private final mContext:Lccsanandroid/content/Context;

.field private final mExtras:Lccsanandroid/os/Bundle;

.field private mGroupAlertBehavior:I

.field private mHeadsUpContentView:Lccsanandroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Lccsanandroidx/core/app/NotificationCompat$Builder;)V
    .locals 14
    .param p1, "b"    # Lccsanandroidx/core/app/NotificationCompat$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    .line 61
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mExtras:Lccsanandroid/os/Bundle;

    .line 69
    iput-object p1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 70
    iget-object v0, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mContext:Lccsanandroid/content/Context;

    iput-object v0, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mContext:Lccsanandroid/content/Context;

    .line 71
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 72
    new-instance v0, Lccsanandroid/app/Notification$Builder;

    iget-object v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mContext:Lccsanandroid/content/Context;

    iget-object v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lccsanandroid/app/Notification$Builder;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Lccsanandroid/app/Notification$Builder;

    iget-object v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v0, v2}, Lccsanandroid/app/Notification$Builder;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    .line 76
    :goto_0
    iget-object v0, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mNotification:Lccsanandroid/app/Notification;

    .line 77
    .local v0, "n":Lccsanandroid/app/Notification;
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    iget-wide v3, v0, Lccsanandroid/app/Notification;->when:J

    invoke-virtual {v2, v3, v4}, Lccsanandroid/app/Notification$Builder;->setWhen(J)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Lccsanandroid/app/Notification;->icon:I

    iget v4, v0, Lccsanandroid/app/Notification;->iconLevel:I

    .line 78
    invoke-virtual {v2, v3, v4}, Lccsanandroid/app/Notification$Builder;->setSmallIcon(II)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Lccsanandroid/app/Notification;->contentView:Lccsanandroid/widget/RemoteViews;

    .line 79
    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setContent(Lccsanandroid/widget/RemoteViews;)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Lccsanandroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v4, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mTickerView:Lccsanandroid/widget/RemoteViews;

    .line 80
    invoke-virtual {v2, v3, v4}, Lccsanandroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Lccsanandroid/widget/RemoteViews;)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Lccsanandroid/app/Notification;->vibrate:[J

    .line 81
    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setVibrate([J)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Lccsanandroid/app/Notification;->ledARGB:I

    iget v4, v0, Lccsanandroid/app/Notification;->ledOnMS:I

    iget v5, v0, Lccsanandroid/app/Notification;->ledOffMS:I

    .line 82
    invoke-virtual {v2, v3, v4, v5}, Lccsanandroid/app/Notification$Builder;->setLights(III)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Lccsanandroid/app/Notification;->flags:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 83
    :goto_1
    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setOngoing(Z)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Lccsanandroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 84
    :goto_2
    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Lccsanandroid/app/Notification;->flags:I

    const/16 v7, 0x10

    and-int/2addr v3, v7

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 85
    :goto_3
    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setAutoCancel(Z)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Lccsanandroid/app/Notification;->defaults:I

    .line 86
    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setDefaults(I)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 89
    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mContentIntent:Lccsanandroid/app/PendingIntent;

    .line 90
    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setContentIntent(Lccsanandroid/app/PendingIntent;)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Lccsanandroid/app/Notification;->deleteIntent:Lccsanandroid/app/PendingIntent;

    .line 91
    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setDeleteIntent(Lccsanandroid/app/PendingIntent;)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mFullScreenIntent:Lccsanandroid/app/PendingIntent;

    iget v8, v0, Lccsanandroid/app/Notification;->flags:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    .line 92
    :goto_4
    invoke-virtual {v2, v3, v8}, Lccsanandroid/app/Notification$Builder;->setFullScreenIntent(Lccsanandroid/app/PendingIntent;Z)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Lccsanandroid/graphics/Bitmap;

    .line 94
    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setLargeIcon(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mNumber:I

    .line 95
    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setNumber(I)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mProgressMax:I

    iget v8, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mProgress:I

    iget-boolean v9, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 96
    invoke-virtual {v2, v3, v8, v9}, Lccsanandroid/app/Notification$Builder;->setProgress(IIZ)Lccsanandroid/app/Notification$Builder;

    .line 97
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_5

    .line 98
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    iget-object v8, v0, Lccsanandroid/app/Notification;->sound:Lccsanandroid/net/Uri;

    iget v9, v0, Lccsanandroid/app/Notification;->audioStreamType:I

    invoke-virtual {v2, v8, v9}, Lccsanandroid/app/Notification$Builder;->setSound(Lccsanandroid/net/Uri;I)Lccsanandroid/app/Notification$Builder;

    .line 100
    :cond_5
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x14

    if-lt v2, v7, :cond_c

    .line 101
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    iget-object v7, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Lccsanandroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget-boolean v7, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 102
    invoke-virtual {v2, v7}, Lccsanandroid/app/Notification$Builder;->setUsesChronometer(Z)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget v7, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 103
    invoke-virtual {v2, v7}, Lccsanandroid/app/Notification$Builder;->setPriority(I)Lccsanandroid/app/Notification$Builder;

    .line 104
    iget-object v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsanandroidx/core/app/NotificationCompat$Action;

    .line 105
    .local v7, "action":Lccsanandroidx/core/app/NotificationCompat$Action;
    invoke-direct {p0, v7}, Lccsanandroidx/core/app/NotificationCompatBuilder;->addAction(Lccsanandroidx/core/app/NotificationCompat$Action;)V

    .line 106
    .end local v7    # "action":Lccsanandroidx/core/app/NotificationCompat$Action;
    goto :goto_5

    .line 108
    :cond_6
    iget-object v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mExtras:Lccsanandroid/os/Bundle;

    if-eqz v2, :cond_7

    .line 109
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mExtras:Lccsanandroid/os/Bundle;

    iget-object v7, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mExtras:Lccsanandroid/os/Bundle;

    invoke-virtual {v2, v7}, Lccsanandroid/os/Bundle;->putAll(Lccsanandroid/os/Bundle;)V

    .line 111
    :cond_7
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v8, :cond_b

    .line 112
    iget-boolean v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    if-eqz v2, :cond_8

    .line 113
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mExtras:Lccsanandroid/os/Bundle;

    const-string v7, "android.support.localOnly"

    invoke-virtual {v2, v7, v6}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    :cond_8
    iget-object v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 116
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mExtras:Lccsanandroid/os/Bundle;

    iget-object v7, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    const-string v9, "android.support.groupKey"

    invoke-virtual {v2, v9, v7}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-boolean v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    if-eqz v2, :cond_9

    .line 118
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mExtras:Lccsanandroid/os/Bundle;

    const-string v7, "android.support.isGroupSummary"

    invoke-virtual {v2, v7, v6}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_6

    .line 120
    :cond_9
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mExtras:Lccsanandroid/os/Bundle;

    const-string v7, "android.support.useSideChannel"

    invoke-virtual {v2, v7, v6}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    :cond_a
    :goto_6
    iget-object v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 125
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mExtras:Lccsanandroid/os/Bundle;

    iget-object v7, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    const-string v9, "android.support.sortKey"

    invoke-virtual {v2, v9, v7}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_b
    iget-object v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mContentView:Lccsanandroid/widget/RemoteViews;

    iput-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mContentView:Lccsanandroid/widget/RemoteViews;

    .line 130
    iget-object v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mBigContentView:Lccsanandroid/widget/RemoteViews;

    iput-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBigContentView:Lccsanandroid/widget/RemoteViews;

    .line 132
    :cond_c
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v2, v7, :cond_d

    .line 133
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    iget-boolean v7, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    invoke-virtual {v2, v7}, Lccsanandroid/app/Notification$Builder;->setShowWhen(Z)Lccsanandroid/app/Notification$Builder;

    .line 135
    :cond_d
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v2, v7, :cond_e

    .line 136
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_e

    .line 137
    iget-object v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-static {v2}, Lccsanandroidx/core/app/NotificationCompatBuilder;->getPeople(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v7, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-static {v2, v7}, Lccsanandroidx/core/app/NotificationCompatBuilder;->combineLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 138
    .local v2, "people":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_e

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    .line 139
    iget-object v7, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mExtras:Lccsanandroid/os/Bundle;

    .line 140
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 139
    const-string v10, "android.people"

    invoke-virtual {v7, v10, v9}, Lccsanandroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 144
    .end local v2    # "people":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_f

    .line 145
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    iget-boolean v7, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    invoke-virtual {v2, v7}, Lccsanandroid/app/Notification$Builder;->setLocalOnly(Z)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget-object v7, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 146
    invoke-virtual {v2, v7}, Lccsanandroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget-boolean v7, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 147
    invoke-virtual {v2, v7}, Lccsanandroid/app/Notification$Builder;->setGroupSummary(Z)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget-object v7, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    .line 148
    invoke-virtual {v2, v7}, Lccsanandroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Lccsanandroid/app/Notification$Builder;

    .line 150
    iget v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    iput v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 152
    :cond_f
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v2, v3, :cond_14

    .line 153
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    iget-object v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 154
    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setColor(I)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 155
    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setVisibility(I)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Lccsanandroid/app/Notification;

    .line 156
    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setPublicVersion(Lccsanandroid/app/Notification;)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Lccsanandroid/app/Notification;->sound:Lccsanandroid/net/Uri;

    iget-object v8, v0, Lccsanandroid/app/Notification;->audioAttributes:Lccsanandroid/media/AudioAttributes;

    .line 157
    invoke-virtual {v2, v3, v8}, Lccsanandroid/app/Notification$Builder;->setSound(Lccsanandroid/net/Uri;Lccsanandroid/media/AudioAttributes;)Lccsanandroid/app/Notification$Builder;

    .line 161
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v7, :cond_10

    .line 162
    iget-object v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-static {v2}, Lccsanandroidx/core/app/NotificationCompatBuilder;->getPeople(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lccsanandroidx/core/app/NotificationCompatBuilder;->combineLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .restart local v2    # "people":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_7

    .line 164
    .end local v2    # "people":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    iget-object v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    .line 166
    .restart local v2    # "people":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_7
    if-eqz v2, :cond_11

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 167
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 168
    .local v8, "person":Ljava/lang/String;
    iget-object v9, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    invoke-virtual {v9, v8}, Lccsanandroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Lccsanandroid/app/Notification$Builder;

    .line 169
    .end local v8    # "person":Ljava/lang/String;
    goto :goto_8

    .line 172
    :cond_11
    iget-object v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Lccsanandroid/widget/RemoteViews;

    iput-object v3, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mHeadsUpContentView:Lccsanandroid/widget/RemoteViews;

    .line 174
    iget-object v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_14

    .line 177
    nop

    .line 178
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v3

    const-string v8, "android.car.EXTENSIONS"

    invoke-virtual {v3, v8}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v3

    .line 179
    .local v3, "carExtenderBundle":Lccsanandroid/os/Bundle;
    if-nez v3, :cond_12

    .line 180
    new-instance v9, Lccsanandroid/os/Bundle;

    invoke-direct {v9}, Lccsanandroid/os/Bundle;-><init>()V

    move-object v3, v9

    .line 182
    :cond_12
    new-instance v9, Lccsanandroid/os/Bundle;

    invoke-direct {v9, v3}, Lccsanandroid/os/Bundle;-><init>(Lccsanandroid/os/Bundle;)V

    .line 183
    .local v9, "extenderBundleCopy":Lccsanandroid/os/Bundle;
    new-instance v10, Lccsanandroid/os/Bundle;

    invoke-direct {v10}, Lccsanandroid/os/Bundle;-><init>()V

    .line 184
    .local v10, "listBundle":Lccsanandroid/os/Bundle;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_9
    iget-object v12, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_13

    .line 185
    nop

    .line 186
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    .line 188
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lccsanandroidx/core/app/NotificationCompat$Action;

    .line 187
    invoke-static {v13}, Lccsanandroidx/core/app/NotificationCompatJellybean;->getBundleForAction(Lccsanandroidx/core/app/NotificationCompat$Action;)Lccsanandroid/os/Bundle;

    move-result-object v13

    .line 185
    invoke-virtual {v10, v12, v13}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 184
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 190
    .end local v11    # "i":I
    :cond_13
    const-string v11, "invisible_actions"

    invoke-virtual {v3, v11, v10}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 192
    invoke-virtual {v9, v11, v10}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 194
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v8, v3}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 196
    iget-object v11, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mExtras:Lccsanandroid/os/Bundle;

    invoke-virtual {v11, v8, v9}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 200
    .end local v2    # "people":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "carExtenderBundle":Lccsanandroid/os/Bundle;
    .end local v9    # "extenderBundleCopy":Lccsanandroid/os/Bundle;
    .end local v10    # "listBundle":Lccsanandroid/os/Bundle;
    :cond_14
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_15

    .line 201
    iget-object v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mSmallIcon:Lccsanandroid/graphics/drawable/Icon;

    if-eqz v2, :cond_15

    .line 202
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    iget-object v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mSmallIcon:Lccsanandroid/graphics/drawable/Icon;

    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setSmallIcon(Lccsanandroid/graphics/drawable/Icon;)Lccsanandroid/app/Notification$Builder;

    .line 205
    :cond_15
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_18

    .line 206
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    iget-object v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mExtras:Lccsanandroid/os/Bundle;

    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setExtras(Lccsanandroid/os/Bundle;)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mRemoteInputHistory:[Ljava/lang/CharSequence;

    .line 207
    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Lccsanandroid/app/Notification$Builder;

    .line 208
    iget-object v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mContentView:Lccsanandroid/widget/RemoteViews;

    if-eqz v2, :cond_16

    .line 209
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    iget-object v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mContentView:Lccsanandroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setCustomContentView(Lccsanandroid/widget/RemoteViews;)Lccsanandroid/app/Notification$Builder;

    .line 211
    :cond_16
    iget-object v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mBigContentView:Lccsanandroid/widget/RemoteViews;

    if-eqz v2, :cond_17

    .line 212
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    iget-object v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mBigContentView:Lccsanandroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setCustomBigContentView(Lccsanandroid/widget/RemoteViews;)Lccsanandroid/app/Notification$Builder;

    .line 214
    :cond_17
    iget-object v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Lccsanandroid/widget/RemoteViews;

    if-eqz v2, :cond_18

    .line 215
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    iget-object v3, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Lccsanandroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setCustomHeadsUpContentView(Lccsanandroid/widget/RemoteViews;)Lccsanandroid/app/Notification$Builder;

    .line 218
    :cond_18
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    if-lt v2, v1, :cond_1a

    .line 219
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    iget v8, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    invoke-virtual {v2, v8}, Lccsanandroid/app/Notification$Builder;->setBadgeIconType(I)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget-object v8, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mSettingsText:Ljava/lang/CharSequence;

    .line 220
    invoke-virtual {v2, v8}, Lccsanandroid/app/Notification$Builder;->setSettingsText(Ljava/lang/CharSequence;)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget-object v8, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mShortcutId:Ljava/lang/String;

    .line 221
    invoke-virtual {v2, v8}, Lccsanandroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget-wide v8, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mTimeout:J

    .line 222
    invoke-virtual {v2, v8, v9}, Lccsanandroid/app/Notification$Builder;->setTimeoutAfter(J)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    iget v8, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    .line 223
    invoke-virtual {v2, v8}, Lccsanandroid/app/Notification$Builder;->setGroupAlertBehavior(I)Lccsanandroid/app/Notification$Builder;

    .line 224
    iget-boolean v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mColorizedSet:Z

    if-eqz v2, :cond_19

    .line 225
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    iget-boolean v8, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mColorized:Z

    invoke-virtual {v2, v8}, Lccsanandroid/app/Notification$Builder;->setColorized(Z)Lccsanandroid/app/Notification$Builder;

    .line 228
    :cond_19
    iget-object v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 229
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setSound(Lccsanandroid/net/Uri;)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    .line 230
    invoke-virtual {v2, v5}, Lccsanandroid/app/Notification$Builder;->setDefaults(I)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    .line 231
    invoke-virtual {v2, v5, v5, v5}, Lccsanandroid/app/Notification$Builder;->setLights(III)Lccsanandroid/app/Notification$Builder;

    move-result-object v2

    .line 232
    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setVibrate([J)Lccsanandroid/app/Notification$Builder;

    .line 235
    :cond_1a
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_1b

    .line 236
    iget-object v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroidx/core/app/Person;

    .line 237
    .local v5, "p":Lccsanandroidx/core/app/Person;
    iget-object v7, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    invoke-virtual {v5}, Lccsanandroidx/core/app/Person;->toAndroidPerson()Lccsanandroid/app/Person;

    move-result-object v8

    invoke-virtual {v7, v8}, Lccsanandroid/app/Notification$Builder;->addPerson(Lccsanandroid/app/Person;)Lccsanandroid/app/Notification$Builder;

    .line 238
    .end local v5    # "p":Lccsanandroidx/core/app/Person;
    goto :goto_a

    .line 240
    :cond_1b
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v2, v5, :cond_1c

    .line 241
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    iget-boolean v5, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    invoke-virtual {v2, v5}, Lccsanandroid/app/Notification$Builder;->setAllowSystemGeneratedContextualActions(Z)Lccsanandroid/app/Notification$Builder;

    .line 244
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    iget-object v5, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mBubbleMetadata:Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;

    .line 245
    invoke-static {v5}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->toPlatform(Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;)Lccsanandroid/app/Notification$BubbleMetadata;

    move-result-object v5

    .line 244
    invoke-virtual {v2, v5}, Lccsanandroid/app/Notification$Builder;->setBubbleMetadata(Lccsanandroid/app/Notification$BubbleMetadata;)Lccsanandroid/app/Notification$Builder;

    .line 246
    iget-object v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mLocusId:Lccsanandroidx/core/content/LocusIdCompat;

    if-eqz v2, :cond_1c

    .line 247
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    iget-object v5, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mLocusId:Lccsanandroidx/core/content/LocusIdCompat;

    invoke-virtual {v5}, Lccsanandroidx/core/content/LocusIdCompat;->toLocusId()Lccsanandroid/content/LocusId;

    move-result-object v5

    invoke-virtual {v2, v5}, Lccsanandroid/app/Notification$Builder;->setLocusId(Lccsanandroid/content/LocusId;)Lccsanandroid/app/Notification$Builder;

    .line 251
    :cond_1c
    iget-boolean v2, p1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mSilent:Z

    if-eqz v2, :cond_1f

    .line 252
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Lccsanandroidx/core/app/NotificationCompat$Builder;

    iget-boolean v2, v2, Lccsanandroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    if-eqz v2, :cond_1d

    .line 253
    iput v4, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    goto :goto_b

    .line 255
    :cond_1d
    iput v6, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 258
    :goto_b
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setVibrate([J)Lccsanandroid/app/Notification$Builder;

    .line 259
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setSound(Lccsanandroid/net/Uri;)Lccsanandroid/app/Notification$Builder;

    .line 260
    iget v2, v0, Lccsanandroid/app/Notification;->defaults:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lccsanandroid/app/Notification;->defaults:I

    .line 261
    iget v2, v0, Lccsanandroid/app/Notification;->defaults:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Lccsanandroid/app/Notification;->defaults:I

    .line 262
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    iget v3, v0, Lccsanandroid/app/Notification;->defaults:I

    invoke-virtual {v2, v3}, Lccsanandroid/app/Notification$Builder;->setDefaults(I)Lccsanandroid/app/Notification$Builder;

    .line 264
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_1f

    .line 265
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Lccsanandroidx/core/app/NotificationCompat$Builder;

    iget-object v1, v1, Lccsanandroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 266
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    const-string/jumbo v2, "silent"

    invoke-virtual {v1, v2}, Lccsanandroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Lccsanandroid/app/Notification$Builder;

    .line 268
    :cond_1e
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    iget v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    invoke-virtual {v1, v2}, Lccsanandroid/app/Notification$Builder;->setGroupAlertBehavior(I)Lccsanandroid/app/Notification$Builder;

    .line 271
    :cond_1f
    return-void
.end method

.method private addAction(Lccsanandroidx/core/app/NotificationCompat$Action;)V
    .locals 6
    .param p1, "action"    # Lccsanandroidx/core/app/NotificationCompat$Action;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 349
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_8

    .line 351
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Action;->getIconCompat()Lccsanandroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 352
    .local v0, "iconCompat":Lccsanandroidx/core/graphics/drawable/IconCompat;
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 353
    new-instance v1, Lccsanandroid/app/Notification$Action$Builder;

    .line 354
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroidx/core/graphics/drawable/IconCompat;->toIcon()Lccsanandroid/graphics/drawable/Icon;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 355
    :goto_0
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 356
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Action;->getActionIntent()Lccsanandroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v1, v2, v4, v5}, Lccsanandroid/app/Notification$Action$Builder;-><init>(Lccsanandroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Lccsanandroid/app/PendingIntent;)V

    .local v1, "actionBuilder":Lccsanandroid/app/Notification$Action$Builder;
    goto :goto_2

    .line 358
    .end local v1    # "actionBuilder":Lccsanandroid/app/Notification$Action$Builder;
    :cond_1
    new-instance v1, Lccsanandroid/app/Notification$Action$Builder;

    .line 359
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsanandroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 360
    :goto_1
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 361
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Action;->getActionIntent()Lccsanandroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v1, v2, v4, v5}, Lccsanandroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Lccsanandroid/app/PendingIntent;)V

    .line 363
    .restart local v1    # "actionBuilder":Lccsanandroid/app/Notification$Action$Builder;
    :goto_2
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Lccsanandroidx/core/app/RemoteInput;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 364
    nop

    .line 365
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Lccsanandroidx/core/app/RemoteInput;

    move-result-object v2

    .line 364
    invoke-static {v2}, Lccsanandroidx/core/app/RemoteInput;->fromCompat([Lccsanandroidx/core/app/RemoteInput;)[Lccsanandroid/app/RemoteInput;

    move-result-object v2

    array-length v4, v2

    :goto_3
    if-ge v3, v4, :cond_3

    aget-object v5, v2, v3

    .line 366
    .local v5, "remoteInput":Lccsanandroid/app/RemoteInput;
    invoke-virtual {v1, v5}, Lccsanandroid/app/Notification$Action$Builder;->addRemoteInput(Lccsanandroid/app/RemoteInput;)Lccsanandroid/app/Notification$Action$Builder;

    .line 364
    .end local v5    # "remoteInput":Lccsanandroid/app/RemoteInput;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 370
    :cond_3
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Action;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 371
    new-instance v2, Lccsanandroid/os/Bundle;

    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Action;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsanandroid/os/Bundle;-><init>(Lccsanandroid/os/Bundle;)V

    .local v2, "actionExtras":Lccsanandroid/os/Bundle;
    goto :goto_4

    .line 373
    .end local v2    # "actionExtras":Lccsanandroid/os/Bundle;
    :cond_4
    new-instance v2, Lccsanandroid/os/Bundle;

    invoke-direct {v2}, Lccsanandroid/os/Bundle;-><init>()V

    .line 375
    .restart local v2    # "actionExtras":Lccsanandroid/os/Bundle;
    :goto_4
    nop

    .line 376
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v3

    .line 375
    const-string v4, "android.support.allowGeneratedReplies"

    invoke-virtual {v2, v4, v3}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 377
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_5

    .line 378
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v3

    invoke-virtual {v1, v3}, Lccsanandroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Lccsanandroid/app/Notification$Action$Builder;

    .line 381
    :cond_5
    nop

    .line 382
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Action;->getSemanticAction()I

    move-result v3

    .line 381
    const-string v4, "android.support.action.semanticAction"

    invoke-virtual {v2, v4, v3}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 383
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_6

    .line 384
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Action;->getSemanticAction()I

    move-result v3

    invoke-virtual {v1, v3}, Lccsanandroid/app/Notification$Action$Builder;->setSemanticAction(I)Lccsanandroid/app/Notification$Action$Builder;

    .line 387
    :cond_6
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_7

    .line 388
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Action;->isContextual()Z

    move-result v3

    invoke-virtual {v1, v3}, Lccsanandroid/app/Notification$Action$Builder;->setContextual(Z)Lccsanandroid/app/Notification$Action$Builder;

    .line 391
    :cond_7
    nop

    .line 392
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Action;->getShowsUserInterface()Z

    move-result v3

    .line 391
    const-string v4, "android.support.action.showsUserInterface"

    invoke-virtual {v2, v4, v3}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 393
    invoke-virtual {v1, v2}, Lccsanandroid/app/Notification$Action$Builder;->addExtras(Lccsanandroid/os/Bundle;)Lccsanandroid/app/Notification$Action$Builder;

    .line 394
    iget-object v3, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    invoke-virtual {v1}, Lccsanandroid/app/Notification$Action$Builder;->build()Lccsanandroid/app/Notification$Action;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsanandroid/app/Notification$Builder;->addAction(Lccsanandroid/app/Notification$Action;)Lccsanandroid/app/Notification$Builder;

    .end local v0    # "iconCompat":Lccsanandroidx/core/graphics/drawable/IconCompat;
    .end local v1    # "actionBuilder":Lccsanandroid/app/Notification$Action$Builder;
    .end local v2    # "actionExtras":Lccsanandroid/os/Bundle;
    goto :goto_5

    .line 395
    :cond_8
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_9

    .line 396
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    .line 397
    invoke-static {v1, p1}, Lccsanandroidx/core/app/NotificationCompatJellybean;->writeActionAndGetExtras(Lccsanandroid/app/Notification$Builder;Lccsanandroidx/core/app/NotificationCompat$Action;)Lccsanandroid/os/Bundle;

    move-result-object v1

    .line 396
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 395
    :cond_9
    :goto_5
    nop

    .line 399
    :goto_6
    return-void
.end method

.method private static combineLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "first",
            "second"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 276
    .local p0, "first":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "second":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 277
    return-object p1

    .line 279
    :cond_0
    if-nez p1, :cond_1

    .line 280
    return-object p0

    .line 282
    :cond_1
    new-instance v0, Lccsanandroidx/collection/ArraySet;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lccsanandroidx/collection/ArraySet;-><init>(I)V

    .line 283
    .local v0, "people":Lccsanandroidx/collection/ArraySet;, "Lccsanandroidx/collection/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0, p0}, Lccsanandroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 284
    invoke-virtual {v0, p1}, Lccsanandroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private static getPeople(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "people"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroidx/core/app/Person;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 290
    .local p0, "people":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/app/Person;>;"
    if-nez p0, :cond_0

    .line 291
    const/4 v0, 0x0

    return-object v0

    .line 293
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 294
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/core/app/Person;

    .line 295
    .local v2, "person":Lccsanandroidx/core/app/Person;
    invoke-virtual {v2}, Lccsanandroidx/core/app/Person;->resolveToLegacyUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v2    # "person":Lccsanandroidx/core/app/Person;
    goto :goto_0

    .line 297
    :cond_1
    return-object v0
.end method

.method private removeSoundAndVibration(Lccsanandroid/app/Notification;)V
    .locals 1
    .param p1, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 527
    const/4 v0, 0x0

    iput-object v0, p1, Lccsanandroid/app/Notification;->sound:Lccsanandroid/net/Uri;

    .line 528
    iput-object v0, p1, Lccsanandroid/app/Notification;->vibrate:[J

    .line 529
    iget v0, p1, Lccsanandroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Lccsanandroid/app/Notification;->defaults:I

    .line 530
    iget v0, p1, Lccsanandroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Lccsanandroid/app/Notification;->defaults:I

    .line 531
    return-void
.end method


# virtual methods
.method public build()Lccsanandroid/app/Notification;
    .locals 6

    .line 310
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Lccsanandroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Lccsanandroidx/core/app/NotificationCompat$Builder;->mStyle:Lccsanandroidx/core/app/NotificationCompat$Style;

    .line 311
    .local v0, "style":Lccsanandroidx/core/app/NotificationCompat$Style;
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0, p0}, Lccsanandroidx/core/app/NotificationCompat$Style;->apply(Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;)V

    .line 315
    :cond_0
    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {v0, p0}, Lccsanandroidx/core/app/NotificationCompat$Style;->makeContentView(Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;)Lccsanandroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_0

    .line 317
    :cond_1
    const/4 v1, 0x0

    :goto_0
    nop

    .line 318
    .local v1, "styleContentView":Lccsanandroid/widget/RemoteViews;
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompatBuilder;->buildInternal()Lccsanandroid/app/Notification;

    move-result-object v2

    .line 319
    .local v2, "n":Lccsanandroid/app/Notification;
    if-eqz v1, :cond_2

    .line 320
    iput-object v1, v2, Lccsanandroid/app/Notification;->contentView:Lccsanandroid/widget/RemoteViews;

    goto :goto_1

    .line 321
    :cond_2
    iget-object v3, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Lccsanandroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Lccsanandroidx/core/app/NotificationCompat$Builder;->mContentView:Lccsanandroid/widget/RemoteViews;

    if-eqz v3, :cond_3

    .line 322
    iget-object v3, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Lccsanandroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Lccsanandroidx/core/app/NotificationCompat$Builder;->mContentView:Lccsanandroid/widget/RemoteViews;

    iput-object v3, v2, Lccsanandroid/app/Notification;->contentView:Lccsanandroid/widget/RemoteViews;

    .line 324
    :cond_3
    :goto_1
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_4

    if-eqz v0, :cond_4

    .line 325
    invoke-virtual {v0, p0}, Lccsanandroidx/core/app/NotificationCompat$Style;->makeBigContentView(Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;)Lccsanandroid/widget/RemoteViews;

    move-result-object v3

    .line 326
    .local v3, "styleBigContentView":Lccsanandroid/widget/RemoteViews;
    if-eqz v3, :cond_4

    .line 327
    iput-object v3, v2, Lccsanandroid/app/Notification;->bigContentView:Lccsanandroid/widget/RemoteViews;

    .line 330
    .end local v3    # "styleBigContentView":Lccsanandroid/widget/RemoteViews;
    :cond_4
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v3, v5, :cond_5

    if-eqz v0, :cond_5

    .line 331
    iget-object v3, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Lccsanandroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Lccsanandroidx/core/app/NotificationCompat$Builder;->mStyle:Lccsanandroidx/core/app/NotificationCompat$Style;

    .line 332
    invoke-virtual {v3, p0}, Lccsanandroidx/core/app/NotificationCompat$Style;->makeHeadsUpContentView(Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;)Lccsanandroid/widget/RemoteViews;

    move-result-object v3

    .line 333
    .local v3, "styleHeadsUpContentView":Lccsanandroid/widget/RemoteViews;
    if-eqz v3, :cond_5

    .line 334
    iput-object v3, v2, Lccsanandroid/app/Notification;->headsUpContentView:Lccsanandroid/widget/RemoteViews;

    .line 338
    .end local v3    # "styleHeadsUpContentView":Lccsanandroid/widget/RemoteViews;
    :cond_5
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_6

    if-eqz v0, :cond_6

    .line 339
    invoke-static {v2}, Lccsanandroidx/core/app/NotificationCompat;->getExtras(Lccsanandroid/app/Notification;)Lccsanandroid/os/Bundle;

    move-result-object v3

    .line 340
    .local v3, "extras":Lccsanandroid/os/Bundle;
    if-eqz v3, :cond_6

    .line 341
    invoke-virtual {v0, v3}, Lccsanandroidx/core/app/NotificationCompat$Style;->addCompatExtras(Lccsanandroid/os/Bundle;)V

    .line 345
    .end local v3    # "extras":Lccsanandroid/os/Bundle;
    :cond_6
    return-object v2
.end method

.method protected buildInternal()Lccsanandroid/app/Notification;
    .locals 7

    .line 403
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    invoke-virtual {v0}, Lccsanandroid/app/Notification$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 405
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lt v0, v1, :cond_3

    .line 406
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    invoke-virtual {v0}, Lccsanandroid/app/Notification$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object v0

    .line 408
    .local v0, "notification":Lccsanandroid/app/Notification;
    iget v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-eqz v1, :cond_2

    .line 410
    invoke-virtual {v0}, Lccsanandroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, v0, Lccsanandroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    iget v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v3, :cond_1

    .line 413
    invoke-direct {p0, v0}, Lccsanandroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Lccsanandroid/app/Notification;)V

    .line 416
    :cond_1
    invoke-virtual {v0}, Lccsanandroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v1, v0, Lccsanandroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_2

    iget v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v2, :cond_2

    .line 419
    invoke-direct {p0, v0}, Lccsanandroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Lccsanandroid/app/Notification;)V

    .line 423
    :cond_2
    return-object v0

    .line 424
    .end local v0    # "notification":Lccsanandroid/app/Notification;
    :cond_3
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    .line 425
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mExtras:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, v1}, Lccsanandroid/app/Notification$Builder;->setExtras(Lccsanandroid/os/Bundle;)Lccsanandroid/app/Notification$Builder;

    .line 426
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    invoke-virtual {v0}, Lccsanandroid/app/Notification$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object v0

    .line 427
    .restart local v0    # "notification":Lccsanandroid/app/Notification;
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mContentView:Lccsanandroid/widget/RemoteViews;

    if-eqz v1, :cond_4

    .line 428
    iput-object v1, v0, Lccsanandroid/app/Notification;->contentView:Lccsanandroid/widget/RemoteViews;

    .line 430
    :cond_4
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBigContentView:Lccsanandroid/widget/RemoteViews;

    if-eqz v1, :cond_5

    .line 431
    iput-object v1, v0, Lccsanandroid/app/Notification;->bigContentView:Lccsanandroid/widget/RemoteViews;

    .line 433
    :cond_5
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mHeadsUpContentView:Lccsanandroid/widget/RemoteViews;

    if-eqz v1, :cond_6

    .line 434
    iput-object v1, v0, Lccsanandroid/app/Notification;->headsUpContentView:Lccsanandroid/widget/RemoteViews;

    .line 437
    :cond_6
    iget v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-eqz v1, :cond_8

    .line 439
    invoke-virtual {v0}, Lccsanandroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget v1, v0, Lccsanandroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_7

    iget v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v3, :cond_7

    .line 442
    invoke-direct {p0, v0}, Lccsanandroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Lccsanandroid/app/Notification;)V

    .line 445
    :cond_7
    invoke-virtual {v0}, Lccsanandroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget v1, v0, Lccsanandroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_8

    iget v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v2, :cond_8

    .line 448
    invoke-direct {p0, v0}, Lccsanandroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Lccsanandroid/app/Notification;)V

    .line 451
    :cond_8
    return-object v0

    .line 452
    .end local v0    # "notification":Lccsanandroid/app/Notification;
    :cond_9
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_e

    .line 453
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mExtras:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, v1}, Lccsanandroid/app/Notification$Builder;->setExtras(Lccsanandroid/os/Bundle;)Lccsanandroid/app/Notification$Builder;

    .line 454
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    invoke-virtual {v0}, Lccsanandroid/app/Notification$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object v0

    .line 455
    .restart local v0    # "notification":Lccsanandroid/app/Notification;
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mContentView:Lccsanandroid/widget/RemoteViews;

    if-eqz v1, :cond_a

    .line 456
    iput-object v1, v0, Lccsanandroid/app/Notification;->contentView:Lccsanandroid/widget/RemoteViews;

    .line 458
    :cond_a
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBigContentView:Lccsanandroid/widget/RemoteViews;

    if-eqz v1, :cond_b

    .line 459
    iput-object v1, v0, Lccsanandroid/app/Notification;->bigContentView:Lccsanandroid/widget/RemoteViews;

    .line 462
    :cond_b
    iget v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-eqz v1, :cond_d

    .line 464
    invoke-virtual {v0}, Lccsanandroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    iget v1, v0, Lccsanandroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_c

    iget v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v3, :cond_c

    .line 467
    invoke-direct {p0, v0}, Lccsanandroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Lccsanandroid/app/Notification;)V

    .line 470
    :cond_c
    invoke-virtual {v0}, Lccsanandroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    iget v1, v0, Lccsanandroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_d

    iget v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v2, :cond_d

    .line 473
    invoke-direct {p0, v0}, Lccsanandroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Lccsanandroid/app/Notification;)V

    .line 477
    :cond_d
    return-object v0

    .line 478
    .end local v0    # "notification":Lccsanandroid/app/Notification;
    :cond_e
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const-string v2, "android.support.actionExtras"

    if-lt v0, v1, :cond_12

    .line 479
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    .line 480
    invoke-static {v0}, Lccsanandroidx/core/app/NotificationCompatJellybean;->buildActionExtrasMap(Ljava/util/List;)Lccsanandroid/util/SparseArray;

    move-result-object v0

    .line 481
    .local v0, "actionExtrasMap":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Bundle;>;"
    if-eqz v0, :cond_f

    .line 483
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mExtras:Lccsanandroid/os/Bundle;

    invoke-virtual {v1, v2, v0}, Lccsanandroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Lccsanandroid/util/SparseArray;)V

    .line 486
    :cond_f
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mExtras:Lccsanandroid/os/Bundle;

    invoke-virtual {v1, v2}, Lccsanandroid/app/Notification$Builder;->setExtras(Lccsanandroid/os/Bundle;)Lccsanandroid/app/Notification$Builder;

    .line 487
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    invoke-virtual {v1}, Lccsanandroid/app/Notification$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object v1

    .line 488
    .local v1, "notification":Lccsanandroid/app/Notification;
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mContentView:Lccsanandroid/widget/RemoteViews;

    if-eqz v2, :cond_10

    .line 489
    iput-object v2, v1, Lccsanandroid/app/Notification;->contentView:Lccsanandroid/widget/RemoteViews;

    .line 491
    :cond_10
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBigContentView:Lccsanandroid/widget/RemoteViews;

    if-eqz v2, :cond_11

    .line 492
    iput-object v2, v1, Lccsanandroid/app/Notification;->bigContentView:Lccsanandroid/widget/RemoteViews;

    .line 494
    :cond_11
    return-object v1

    .line 495
    .end local v0    # "actionExtrasMap":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Bundle;>;"
    .end local v1    # "notification":Lccsanandroid/app/Notification;
    :cond_12
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_18

    .line 496
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    invoke-virtual {v0}, Lccsanandroid/app/Notification$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object v0

    .line 499
    .local v0, "notification":Lccsanandroid/app/Notification;
    invoke-static {v0}, Lccsanandroidx/core/app/NotificationCompat;->getExtras(Lccsanandroid/app/Notification;)Lccsanandroid/os/Bundle;

    move-result-object v1

    .line 500
    .local v1, "extras":Lccsanandroid/os/Bundle;
    new-instance v3, Lccsanandroid/os/Bundle;

    iget-object v4, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mExtras:Lccsanandroid/os/Bundle;

    invoke-direct {v3, v4}, Lccsanandroid/os/Bundle;-><init>(Lccsanandroid/os/Bundle;)V

    .line 501
    .local v3, "mergeBundle":Lccsanandroid/os/Bundle;
    iget-object v4, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mExtras:Lccsanandroid/os/Bundle;

    invoke-virtual {v4}, Lccsanandroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 502
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 503
    invoke-virtual {v3, v5}, Lccsanandroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 505
    .end local v5    # "key":Ljava/lang/String;
    :cond_13
    goto :goto_0

    .line 506
    :cond_14
    invoke-virtual {v1, v3}, Lccsanandroid/os/Bundle;->putAll(Lccsanandroid/os/Bundle;)V

    .line 507
    iget-object v4, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    .line 508
    invoke-static {v4}, Lccsanandroidx/core/app/NotificationCompatJellybean;->buildActionExtrasMap(Ljava/util/List;)Lccsanandroid/util/SparseArray;

    move-result-object v4

    .line 509
    .local v4, "actionExtrasMap":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Bundle;>;"
    if-eqz v4, :cond_15

    .line 511
    invoke-static {v0}, Lccsanandroidx/core/app/NotificationCompat;->getExtras(Lccsanandroid/app/Notification;)Lccsanandroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lccsanandroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Lccsanandroid/util/SparseArray;)V

    .line 514
    :cond_15
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mContentView:Lccsanandroid/widget/RemoteViews;

    if-eqz v2, :cond_16

    .line 515
    iput-object v2, v0, Lccsanandroid/app/Notification;->contentView:Lccsanandroid/widget/RemoteViews;

    .line 517
    :cond_16
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBigContentView:Lccsanandroid/widget/RemoteViews;

    if-eqz v2, :cond_17

    .line 518
    iput-object v2, v0, Lccsanandroid/app/Notification;->bigContentView:Lccsanandroid/widget/RemoteViews;

    .line 520
    :cond_17
    return-object v0

    .line 522
    .end local v0    # "notification":Lccsanandroid/app/Notification;
    .end local v1    # "extras":Lccsanandroid/os/Bundle;
    .end local v3    # "mergeBundle":Lccsanandroid/os/Bundle;
    .end local v4    # "actionExtrasMap":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Bundle;>;"
    :cond_18
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    invoke-virtual {v0}, Lccsanandroid/app/Notification$Builder;->getNotification()Lccsanandroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getBuilder()Lccsanandroid/app/Notification$Builder;
    .locals 1

    .line 302
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mBuilder:Lccsanandroid/app/Notification$Builder;

    return-object v0
.end method

.method getContext()Lccsanandroid/content/Context;
    .locals 1

    .line 306
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompatBuilder;->mContext:Lccsanandroid/content/Context;

    return-object v0
.end method
