.class public Lccsanandroidx/core/app/NotificationCompat;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;,
        Lccsanandroidx/core/app/NotificationCompat$CarExtender;,
        Lccsanandroidx/core/app/NotificationCompat$WearableExtender;,
        Lccsanandroidx/core/app/NotificationCompat$Extender;,
        Lccsanandroidx/core/app/NotificationCompat$Action;,
        Lccsanandroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;,
        Lccsanandroidx/core/app/NotificationCompat$InboxStyle;,
        Lccsanandroidx/core/app/NotificationCompat$MessagingStyle;,
        Lccsanandroidx/core/app/NotificationCompat$BigTextStyle;,
        Lccsanandroidx/core/app/NotificationCompat$BigPictureStyle;,
        Lccsanandroidx/core/app/NotificationCompat$Style;,
        Lccsanandroidx/core/app/NotificationCompat$Builder;,
        Lccsanandroidx/core/app/NotificationCompat$GroupAlertBehavior;,
        Lccsanandroidx/core/app/NotificationCompat$BadgeIconType;,
        Lccsanandroidx/core/app/NotificationCompat$NotificationVisibility;,
        Lccsanandroidx/core/app/NotificationCompat$StreamType;
    }
.end annotation


# static fields
.field public static final BADGE_ICON_LARGE:I = 0x2

.field public static final BADGE_ICON_NONE:I = 0x0

.field public static final BADGE_ICON_SMALL:I = 0x1

.field public static final CATEGORY_ALARM:Ljava/lang/String; = "alarm"

.field public static final CATEGORY_CALL:Ljava/lang/String; = "call"

.field public static final CATEGORY_EMAIL:Ljava/lang/String; = "email"

.field public static final CATEGORY_ERROR:Ljava/lang/String; = "err"

.field public static final CATEGORY_EVENT:Ljava/lang/String; = "event"

.field public static final CATEGORY_LOCATION_SHARING:Ljava/lang/String; = "location_sharing"

.field public static final CATEGORY_MESSAGE:Ljava/lang/String; = "msg"

.field public static final CATEGORY_MISSED_CALL:Ljava/lang/String; = "missed_call"

.field public static final CATEGORY_NAVIGATION:Ljava/lang/String; = "navigation"

.field public static final CATEGORY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final CATEGORY_PROMO:Ljava/lang/String; = "promo"

.field public static final CATEGORY_RECOMMENDATION:Ljava/lang/String; = "recommendation"

.field public static final CATEGORY_REMINDER:Ljava/lang/String; = "reminder"

.field public static final CATEGORY_SERVICE:Ljava/lang/String; = "service"

.field public static final CATEGORY_SOCIAL:Ljava/lang/String; = "social"

.field public static final CATEGORY_STATUS:Ljava/lang/String; = "status"

.field public static final CATEGORY_STOPWATCH:Ljava/lang/String; = "stopwatch"

.field public static final CATEGORY_SYSTEM:Ljava/lang/String; = "sys"

.field public static final CATEGORY_TRANSPORT:Ljava/lang/String; = "transport"

.field public static final CATEGORY_WORKOUT:Ljava/lang/String; = "workout"

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final DEFAULT_ALL:I = -0x1

.field public static final DEFAULT_LIGHTS:I = 0x4

.field public static final DEFAULT_SOUND:I = 0x1

.field public static final DEFAULT_VIBRATE:I = 0x2

.field public static final EXTRA_AUDIO_CONTENTS_URI:Ljava/lang/String; = "android.audioContents"

.field public static final EXTRA_BACKGROUND_IMAGE_URI:Ljava/lang/String; = "android.backgroundImageUri"

.field public static final EXTRA_BIG_TEXT:Ljava/lang/String; = "android.bigText"

.field public static final EXTRA_CHANNEL_GROUP_ID:Ljava/lang/String; = "android.intent.extra.CHANNEL_GROUP_ID"

.field public static final EXTRA_CHANNEL_ID:Ljava/lang/String; = "android.intent.extra.CHANNEL_ID"

.field public static final EXTRA_CHRONOMETER_COUNT_DOWN:Ljava/lang/String; = "android.chronometerCountDown"

.field public static final EXTRA_COLORIZED:Ljava/lang/String; = "android.colorized"

.field public static final EXTRA_COMPACT_ACTIONS:Ljava/lang/String; = "android.compactActions"

.field public static final EXTRA_COMPAT_TEMPLATE:Ljava/lang/String; = "androidx.core.app.extra.COMPAT_TEMPLATE"

.field public static final EXTRA_CONVERSATION_TITLE:Ljava/lang/String; = "android.conversationTitle"

.field public static final EXTRA_HIDDEN_CONVERSATION_TITLE:Ljava/lang/String; = "android.hiddenConversationTitle"

.field public static final EXTRA_HISTORIC_MESSAGES:Ljava/lang/String; = "android.messages.historic"

.field public static final EXTRA_INFO_TEXT:Ljava/lang/String; = "android.infoText"

.field public static final EXTRA_IS_GROUP_CONVERSATION:Ljava/lang/String; = "android.isGroupConversation"

.field public static final EXTRA_LARGE_ICON:Ljava/lang/String; = "android.largeIcon"

.field public static final EXTRA_LARGE_ICON_BIG:Ljava/lang/String; = "android.largeIcon.big"

.field public static final EXTRA_MEDIA_SESSION:Ljava/lang/String; = "android.mediaSession"

.field public static final EXTRA_MESSAGES:Ljava/lang/String; = "android.messages"

.field public static final EXTRA_MESSAGING_STYLE_USER:Ljava/lang/String; = "android.messagingStyleUser"

.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "android.intent.extra.NOTIFICATION_ID"

.field public static final EXTRA_NOTIFICATION_TAG:Ljava/lang/String; = "android.intent.extra.NOTIFICATION_TAG"

.field public static final EXTRA_PEOPLE:Ljava/lang/String; = "android.people"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_PEOPLE_LIST:Ljava/lang/String; = "android.people.list"

.field public static final EXTRA_PICTURE:Ljava/lang/String; = "android.picture"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "android.progress"

.field public static final EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String; = "android.progressIndeterminate"

.field public static final EXTRA_PROGRESS_MAX:Ljava/lang/String; = "android.progressMax"

.field public static final EXTRA_REMOTE_INPUT_HISTORY:Ljava/lang/String; = "android.remoteInputHistory"

.field public static final EXTRA_SELF_DISPLAY_NAME:Ljava/lang/String; = "android.selfDisplayName"

.field public static final EXTRA_SHOW_CHRONOMETER:Ljava/lang/String; = "android.showChronometer"

.field public static final EXTRA_SHOW_WHEN:Ljava/lang/String; = "android.showWhen"

.field public static final EXTRA_SMALL_ICON:Ljava/lang/String; = "android.icon"

.field public static final EXTRA_SUB_TEXT:Ljava/lang/String; = "android.subText"

.field public static final EXTRA_SUMMARY_TEXT:Ljava/lang/String; = "android.summaryText"

.field public static final EXTRA_TEMPLATE:Ljava/lang/String; = "android.template"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.text"

.field public static final EXTRA_TEXT_LINES:Ljava/lang/String; = "android.textLines"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.title"

.field public static final EXTRA_TITLE_BIG:Ljava/lang/String; = "android.title.big"

.field public static final FLAG_AUTO_CANCEL:I = 0x10

.field public static final FLAG_BUBBLE:I = 0x1000

.field public static final FLAG_FOREGROUND_SERVICE:I = 0x40

.field public static final FLAG_GROUP_SUMMARY:I = 0x200

.field public static final FLAG_HIGH_PRIORITY:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_INSISTENT:I = 0x4

.field public static final FLAG_LOCAL_ONLY:I = 0x100

.field public static final FLAG_NO_CLEAR:I = 0x20

.field public static final FLAG_ONGOING_EVENT:I = 0x2

.field public static final FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final FLAG_SHOW_LIGHTS:I = 0x1

.field public static final GROUP_ALERT_ALL:I = 0x0

.field public static final GROUP_ALERT_CHILDREN:I = 0x2

.field public static final GROUP_ALERT_SUMMARY:I = 0x1

.field public static final GROUP_KEY_SILENT:Ljava/lang/String; = "silent"

.field public static final INTENT_CATEGORY_NOTIFICATION_PREFERENCES:Ljava/lang/String; = "android.intent.category.NOTIFICATION_PREFERENCES"

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2

.field public static final STREAM_DEFAULT:I = -0x1

.field public static final VISIBILITY_PRIVATE:I = 0x0

.field public static final VISIBILITY_PUBLIC:I = 0x1

.field public static final VISIBILITY_SECRET:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7660
    return-void
.end method

.method public static getAction(Lccsanandroid/app/Notification;I)Lccsanandroidx/core/app/NotificationCompat$Action;
    .locals 6
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .param p1, "actionIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "notification",
            "actionIndex"
        }
    .end annotation

    .line 7224
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 7225
    iget-object v0, p0, Lccsanandroid/app/Notification;->actions:[Lccsanandroid/app/Notification$Action;

    aget-object v0, v0, p1

    invoke-static {v0}, Lccsanandroidx/core/app/NotificationCompat;->getActionCompatFromAction(Lccsanandroid/app/Notification$Action;)Lccsanandroidx/core/app/NotificationCompat$Action;

    move-result-object v0

    return-object v0

    .line 7226
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 7227
    iget-object v0, p0, Lccsanandroid/app/Notification;->actions:[Lccsanandroid/app/Notification$Action;

    aget-object v0, v0, p1

    .line 7228
    .local v0, "action":Lccsanandroid/app/Notification$Action;
    const/4 v1, 0x0

    .line 7229
    .local v1, "actionExtras":Lccsanandroid/os/Bundle;
    iget-object v2, p0, Lccsanandroid/app/Notification;->extras:Lccsanandroid/os/Bundle;

    const-string v3, "android.support.actionExtras"

    invoke-virtual {v2, v3}, Lccsanandroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Lccsanandroid/util/SparseArray;

    move-result-object v2

    .line 7231
    .local v2, "actionExtrasMap":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Bundle;>;"
    if-eqz v2, :cond_1

    .line 7232
    invoke-virtual {v2, p1}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lccsanandroid/os/Bundle;

    .line 7234
    :cond_1
    iget v3, v0, Lccsanandroid/app/Notification$Action;->icon:I

    iget-object v4, v0, Lccsanandroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v5, v0, Lccsanandroid/app/Notification$Action;->actionIntent:Lccsanandroid/app/PendingIntent;

    invoke-static {v3, v4, v5, v1}, Lccsanandroidx/core/app/NotificationCompatJellybean;->readAction(ILjava/lang/CharSequence;Lccsanandroid/app/PendingIntent;Lccsanandroid/os/Bundle;)Lccsanandroidx/core/app/NotificationCompat$Action;

    move-result-object v3

    return-object v3

    .line 7236
    .end local v0    # "action":Lccsanandroid/app/Notification$Action;
    .end local v1    # "actionExtras":Lccsanandroid/os/Bundle;
    .end local v2    # "actionExtrasMap":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Bundle;>;"
    :cond_2
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 7237
    invoke-static {p0, p1}, Lccsanandroidx/core/app/NotificationCompatJellybean;->getAction(Lccsanandroid/app/Notification;I)Lccsanandroidx/core/app/NotificationCompat$Action;

    move-result-object v0

    return-object v0

    .line 7239
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method static getActionCompatFromAction(Lccsanandroid/app/Notification$Action;)Lccsanandroidx/core/app/NotificationCompat$Action;
    .locals 30
    .param p0, "action"    # Lccsanandroid/app/Notification$Action;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 7263
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lccsanandroid/app/Notification$Action;->getRemoteInputs()[Lccsanandroid/app/RemoteInput;

    move-result-object v1

    .line 7264
    .local v1, "srcArray":[Lccsanandroid/app/RemoteInput;
    const/16 v2, 0x1d

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 7265
    const/4 v4, 0x0

    .local v4, "remoteInputs":[Lccsanandroidx/core/app/RemoteInput;
    goto :goto_2

    .line 7267
    .end local v4    # "remoteInputs":[Lccsanandroidx/core/app/RemoteInput;
    :cond_0
    array-length v4, v1

    new-array v4, v4, [Lccsanandroidx/core/app/RemoteInput;

    .line 7268
    .restart local v4    # "remoteInputs":[Lccsanandroidx/core/app/RemoteInput;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 7269
    aget-object v6, v1, v5

    .line 7270
    .local v6, "src":Lccsanandroid/app/RemoteInput;
    new-instance v15, Lccsanandroidx/core/app/RemoteInput;

    .line 7271
    invoke-virtual {v6}, Lccsanandroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v8

    .line 7272
    invoke-virtual {v6}, Lccsanandroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    .line 7273
    invoke-virtual {v6}, Lccsanandroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 7274
    invoke-virtual {v6}, Lccsanandroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v11

    .line 7275
    sget v7, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v2, :cond_1

    .line 7276
    invoke-virtual {v6}, Lccsanandroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v7

    move v12, v7

    goto :goto_1

    .line 7277
    :cond_1
    const/4 v12, 0x0

    .line 7278
    :goto_1
    invoke-virtual {v6}, Lccsanandroid/app/RemoteInput;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v13

    const/4 v14, 0x0

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lccsanandroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILccsanandroid/os/Bundle;Ljava/util/Set;)V

    aput-object v15, v4, v5

    .line 7268
    .end local v6    # "src":Lccsanandroid/app/RemoteInput;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7284
    .end local v5    # "i":I
    :cond_2
    :goto_2
    sget v5, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    const-string v7, "android.support.allowGeneratedReplies"

    const/4 v8, 0x1

    if-lt v5, v6, :cond_5

    .line 7285
    invoke-virtual/range {p0 .. p0}, Lccsanandroid/app/Notification$Action;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v7}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 7287
    invoke-virtual/range {p0 .. p0}, Lccsanandroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v5, 0x1

    .local v5, "allowGeneratedReplies":Z
    :goto_4
    goto :goto_5

    .line 7289
    .end local v5    # "allowGeneratedReplies":Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lccsanandroid/app/Notification$Action;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v7}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 7293
    .restart local v5    # "allowGeneratedReplies":Z
    :goto_5
    nop

    .line 7294
    invoke-virtual/range {p0 .. p0}, Lccsanandroid/app/Notification$Action;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.support.action.showsUserInterface"

    invoke-virtual {v6, v7, v8}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    .line 7297
    .local v28, "showsUserInterface":Z
    sget v6, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_6

    .line 7298
    invoke-virtual/range {p0 .. p0}, Lccsanandroid/app/Notification$Action;->getSemanticAction()I

    move-result v6

    move/from16 v29, v6

    .local v6, "semanticAction":I
    goto :goto_6

    .line 7300
    .end local v6    # "semanticAction":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lccsanandroid/app/Notification$Action;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.support.action.semanticAction"

    invoke-virtual {v6, v7, v3}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    move/from16 v29, v6

    .line 7304
    .local v29, "semanticAction":I
    :goto_6
    sget v6, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lccsanandroid/app/Notification$Action;->isContextual()Z

    move-result v3

    move/from16 v16, v3

    goto :goto_7

    :cond_7
    const/16 v16, 0x0

    .line 7306
    .local v16, "isContextual":Z
    :goto_7
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_a

    .line 7307
    invoke-virtual/range {p0 .. p0}, Lccsanandroid/app/Notification$Action;->getIcon()Lccsanandroid/graphics/drawable/Icon;

    move-result-object v2

    if-nez v2, :cond_8

    iget v2, v0, Lccsanandroid/app/Notification$Action;->icon:I

    if-eqz v2, :cond_8

    .line 7308
    new-instance v2, Lccsanandroidx/core/app/NotificationCompat$Action;

    iget v7, v0, Lccsanandroid/app/Notification$Action;->icon:I

    iget-object v8, v0, Lccsanandroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v9, v0, Lccsanandroid/app/Notification$Action;->actionIntent:Lccsanandroid/app/PendingIntent;

    .line 7309
    invoke-virtual/range {p0 .. p0}, Lccsanandroid/app/Notification$Action;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v10

    const/4 v12, 0x0

    move-object v6, v2

    move-object v11, v4

    move v13, v5

    move/from16 v14, v29

    move/from16 v15, v28

    invoke-direct/range {v6 .. v16}, Lccsanandroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Lccsanandroid/app/PendingIntent;Lccsanandroid/os/Bundle;[Lccsanandroidx/core/app/RemoteInput;[Lccsanandroidx/core/app/RemoteInput;ZIZZ)V

    .line 7308
    return-object v2

    .line 7312
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lccsanandroid/app/Notification$Action;->getIcon()Lccsanandroid/graphics/drawable/Icon;

    move-result-object v2

    if-nez v2, :cond_9

    .line 7313
    const/4 v2, 0x0

    goto :goto_8

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lccsanandroid/app/Notification$Action;->getIcon()Lccsanandroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-static {v2}, Lccsanandroidx/core/graphics/drawable/IconCompat;->createFromIconOrNullIfZeroResId(Lccsanandroid/graphics/drawable/Icon;)Lccsanandroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    :goto_8
    move-object/from16 v18, v2

    .line 7314
    .local v18, "icon":Lccsanandroidx/core/graphics/drawable/IconCompat;
    new-instance v2, Lccsanandroidx/core/app/NotificationCompat$Action;

    iget-object v3, v0, Lccsanandroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v6, v0, Lccsanandroid/app/Notification$Action;->actionIntent:Lccsanandroid/app/PendingIntent;

    invoke-virtual/range {p0 .. p0}, Lccsanandroid/app/Notification$Action;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v21

    const/16 v23, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v6

    move-object/from16 v22, v4

    move/from16 v24, v5

    move/from16 v25, v29

    move/from16 v26, v28

    move/from16 v27, v16

    invoke-direct/range {v17 .. v27}, Lccsanandroidx/core/app/NotificationCompat$Action;-><init>(Lccsanandroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Lccsanandroid/app/PendingIntent;Lccsanandroid/os/Bundle;[Lccsanandroidx/core/app/RemoteInput;[Lccsanandroidx/core/app/RemoteInput;ZIZZ)V

    return-object v2

    .line 7318
    .end local v18    # "icon":Lccsanandroidx/core/graphics/drawable/IconCompat;
    :cond_a
    new-instance v2, Lccsanandroidx/core/app/NotificationCompat$Action;

    iget v3, v0, Lccsanandroid/app/Notification$Action;->icon:I

    iget-object v6, v0, Lccsanandroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v7, v0, Lccsanandroid/app/Notification$Action;->actionIntent:Lccsanandroid/app/PendingIntent;

    invoke-virtual/range {p0 .. p0}, Lccsanandroid/app/Notification$Action;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v21

    const/16 v23, 0x0

    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v22, v4

    move/from16 v24, v5

    move/from16 v25, v29

    move/from16 v26, v28

    move/from16 v27, v16

    invoke-direct/range {v17 .. v27}, Lccsanandroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Lccsanandroid/app/PendingIntent;Lccsanandroid/os/Bundle;[Lccsanandroidx/core/app/RemoteInput;[Lccsanandroidx/core/app/RemoteInput;ZIZZ)V

    return-object v2
.end method

.method public static getActionCount(Lccsanandroid/app/Notification;)I
    .locals 3
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7207
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 7208
    iget-object v0, p0, Lccsanandroid/app/Notification;->actions:[Lccsanandroid/app/Notification$Action;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroid/app/Notification;->actions:[Lccsanandroid/app/Notification$Action;

    array-length v1, v0

    :cond_0
    return v1

    .line 7209
    :cond_1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_2

    .line 7210
    invoke-static {p0}, Lccsanandroidx/core/app/NotificationCompatJellybean;->getActionCount(Lccsanandroid/app/Notification;)I

    move-result v0

    return v0

    .line 7212
    :cond_2
    return v1
.end method

.method public static getAllowSystemGeneratedContextualActions(Lccsanandroid/app/Notification;)Z
    .locals 2
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7649
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 7650
    invoke-virtual {p0}, Lccsanandroid/app/Notification;->getAllowSystemGeneratedContextualActions()Z

    move-result v0

    return v0

    .line 7652
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getAutoCancel(Lccsanandroid/app/Notification;)Z
    .locals 1
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7468
    iget v0, p0, Lccsanandroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getBadgeIconType(Lccsanandroid/app/Notification;)I
    .locals 2
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7582
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 7583
    invoke-virtual {p0}, Lccsanandroid/app/Notification;->getBadgeIconType()I

    move-result v0

    return v0

    .line 7585
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getBubbleMetadata(Lccsanandroid/app/Notification;)Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;
    .locals 2
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7252
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 7253
    invoke-virtual {p0}, Lccsanandroid/app/Notification;->getBubbleMetadata()Lccsanandroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;->fromPlatform(Lccsanandroid/app/Notification$BubbleMetadata;)Lccsanandroidx/core/app/NotificationCompat$BubbleMetadata;

    move-result-object v0

    return-object v0

    .line 7255
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCategory(Lccsanandroid/app/Notification;)Ljava/lang/String;
    .locals 2
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7402
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 7403
    iget-object v0, p0, Lccsanandroid/app/Notification;->category:Ljava/lang/String;

    return-object v0

    .line 7405
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getChannelId(Lccsanandroid/app/Notification;)Ljava/lang/String;
    .locals 2
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7557
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 7558
    invoke-virtual {p0}, Lccsanandroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7560
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getColor(Lccsanandroid/app/Notification;)I
    .locals 2
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7478
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 7479
    iget v0, p0, Lccsanandroid/app/Notification;->color:I

    return v0

    .line 7481
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getContentInfo(Lccsanandroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7387
    iget-object v0, p0, Lccsanandroid/app/Notification;->extras:Lccsanandroid/os/Bundle;

    const-string v1, "android.infoText"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getContentText(Lccsanandroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7381
    iget-object v0, p0, Lccsanandroid/app/Notification;->extras:Lccsanandroid/os/Bundle;

    const-string v1, "android.text"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getContentTitle(Lccsanandroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7375
    iget-object v0, p0, Lccsanandroid/app/Notification;->extras:Lccsanandroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getExtras(Lccsanandroid/app/Notification;)Lccsanandroid/os/Bundle;
    .locals 2
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7193
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 7194
    iget-object v0, p0, Lccsanandroid/app/Notification;->extras:Lccsanandroid/os/Bundle;

    return-object v0

    .line 7195
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 7196
    invoke-static {p0}, Lccsanandroidx/core/app/NotificationCompatJellybean;->getExtras(Lccsanandroid/app/Notification;)Lccsanandroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 7198
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getGroup(Lccsanandroid/app/Notification;)Ljava/lang/String;
    .locals 3
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7433
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 7434
    invoke-virtual {p0}, Lccsanandroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7435
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const-string v2, "android.support.groupKey"

    if-lt v0, v1, :cond_1

    .line 7436
    iget-object v0, p0, Lccsanandroid/app/Notification;->extras:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, v2}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7437
    :cond_1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 7438
    invoke-static {p0}, Lccsanandroidx/core/app/NotificationCompatJellybean;->getExtras(Lccsanandroid/app/Notification;)Lccsanandroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7441
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getGroupAlertBehavior(Lccsanandroid/app/Notification;)I
    .locals 2
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7636
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 7637
    invoke-virtual {p0}, Lccsanandroid/app/Notification;->getGroupAlertBehavior()I

    move-result v0

    return v0

    .line 7639
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static getHighPriority(Lccsanandroid/app/Notification;)Z
    .locals 1
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7506
    iget v0, p0, Lccsanandroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getInvisibleActions(Lccsanandroid/app/Notification;)Ljava/util/List;
    .locals 5
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/app/Notification;",
            ")",
            "Ljava/util/List<",
            "Lccsanandroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .line 7327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7328
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/core/app/NotificationCompat$Action;>;"
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 7329
    iget-object v1, p0, Lccsanandroid/app/Notification;->extras:Lccsanandroid/os/Bundle;

    .line 7330
    const-string v2, "android.car.EXTENSIONS"

    invoke-virtual {v1, v2}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v1

    .line 7331
    .local v1, "carExtenderBundle":Lccsanandroid/os/Bundle;
    if-nez v1, :cond_0

    .line 7332
    return-object v0

    .line 7335
    :cond_0
    const-string v2, "invisible_actions"

    invoke-virtual {v1, v2}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v2

    .line 7336
    .local v2, "listBundle":Lccsanandroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 7337
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lccsanandroid/os/Bundle;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 7338
    nop

    .line 7339
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v4

    .line 7338
    invoke-static {v4}, Lccsanandroidx/core/app/NotificationCompatJellybean;->getActionFromBundle(Lccsanandroid/os/Bundle;)Lccsanandroidx/core/app/NotificationCompat$Action;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7337
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7343
    .end local v1    # "carExtenderBundle":Lccsanandroid/os/Bundle;
    .end local v2    # "listBundle":Lccsanandroid/os/Bundle;
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getLocalOnly(Lccsanandroid/app/Notification;)Z
    .locals 4
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7416
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_1

    .line 7417
    iget v0, p0, Lccsanandroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 7418
    :cond_1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const-string v3, "android.support.localOnly"

    if-lt v0, v2, :cond_2

    .line 7419
    iget-object v0, p0, Lccsanandroid/app/Notification;->extras:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, v3}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 7420
    :cond_2
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_3

    .line 7421
    invoke-static {p0}, Lccsanandroidx/core/app/NotificationCompatJellybean;->getExtras(Lccsanandroid/app/Notification;)Lccsanandroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 7424
    :cond_3
    return v1
.end method

.method public static getLocusId(Lccsanandroid/app/Notification;)Lccsanandroidx/core/content/LocusIdCompat;
    .locals 3
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7621
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    .line 7622
    invoke-virtual {p0}, Lccsanandroid/app/Notification;->getLocusId()Lccsanandroid/content/LocusId;

    move-result-object v0

    .line 7623
    .local v0, "locusId":Lccsanandroid/content/LocusId;
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lccsanandroidx/core/content/LocusIdCompat;->toLocusIdCompat(Lccsanandroid/content/LocusId;)Lccsanandroidx/core/content/LocusIdCompat;

    move-result-object v1

    :goto_0
    return-object v1

    .line 7625
    .end local v0    # "locusId":Lccsanandroid/content/LocusId;
    :cond_1
    return-object v1
.end method

.method static getNotificationArrayFromBundle(Lccsanandroid/os/Bundle;Ljava/lang/String;)[Lccsanandroid/app/Notification;
    .locals 4
    .param p0, "bundle"    # Lccsanandroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bundle",
            "key"
        }
    .end annotation

    .line 7174
    invoke-virtual {p0, p1}, Lccsanandroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Lccsanandroid/os/Parcelable;

    move-result-object v0

    .line 7175
    .local v0, "array":[Lccsanandroid/os/Parcelable;
    instance-of v1, v0, [Lccsanandroid/app/Notification;

    if-nez v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    .line 7178
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Lccsanandroid/app/Notification;

    .line 7179
    .local v1, "typedArray":[Lccsanandroid/app/Notification;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 7180
    aget-object v3, v0, v2

    check-cast v3, Lccsanandroid/app/Notification;

    aput-object v3, v1, v2

    .line 7179
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7182
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, p1, v1}, Lccsanandroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Lccsanandroid/os/Parcelable;)V

    .line 7183
    return-object v1

    .line 7176
    .end local v1    # "typedArray":[Lccsanandroid/app/Notification;
    :cond_2
    :goto_1
    move-object v1, v0

    check-cast v1, [Lccsanandroid/app/Notification;

    return-object v1
.end method

.method public static getOngoing(Lccsanandroid/app/Notification;)Z
    .locals 1
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7473
    iget v0, p0, Lccsanandroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getOnlyAlertOnce(Lccsanandroid/app/Notification;)Z
    .locals 1
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7463
    iget v0, p0, Lccsanandroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getPeople(Lccsanandroid/app/Notification;)Ljava/util/List;
    .locals 6
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/app/Notification;",
            ")",
            "Ljava/util/List<",
            "Lccsanandroidx/core/app/Person;",
            ">;"
        }
    .end annotation

    .line 7352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7353
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/core/app/Person;>;"
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 7354
    iget-object v1, p0, Lccsanandroid/app/Notification;->extras:Lccsanandroid/os/Bundle;

    .line 7355
    const-string v2, "android.people.list"

    invoke-virtual {v1, v2}, Lccsanandroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 7356
    .local v1, "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/app/Person;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7357
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/app/Person;

    .line 7358
    .local v3, "person":Lccsanandroid/app/Person;
    invoke-static {v3}, Lccsanandroidx/core/app/Person;->fromAndroidPerson(Lccsanandroid/app/Person;)Lccsanandroidx/core/app/Person;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7359
    .end local v3    # "person":Lccsanandroid/app/Person;
    goto :goto_0

    .line 7361
    .end local v1    # "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/app/Person;>;"
    :cond_0
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 7362
    iget-object v1, p0, Lccsanandroid/app/Notification;->extras:Lccsanandroid/os/Bundle;

    const-string v2, "android.people"

    invoke-virtual {v1, v2}, Lccsanandroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7363
    .local v1, "peopleArray":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-eqz v2, :cond_2

    .line 7364
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 7365
    .local v4, "personUri":Ljava/lang/String;
    new-instance v5, Lccsanandroidx/core/app/Person$Builder;

    invoke-direct {v5}, Lccsanandroidx/core/app/Person$Builder;-><init>()V

    invoke-virtual {v5, v4}, Lccsanandroidx/core/app/Person$Builder;->setUri(Ljava/lang/String;)Lccsanandroidx/core/app/Person$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lccsanandroidx/core/app/Person$Builder;->build()Lccsanandroidx/core/app/Person;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7364
    .end local v4    # "personUri":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7361
    .end local v1    # "peopleArray":[Ljava/lang/String;
    :cond_1
    nop

    .line 7369
    :cond_2
    return-object v0
.end method

.method public static getPublicVersion(Lccsanandroid/app/Notification;)Lccsanandroid/app/Notification;
    .locals 2
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7496
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 7497
    iget-object v0, p0, Lccsanandroid/app/Notification;->publicVersion:Lccsanandroid/app/Notification;

    return-object v0

    .line 7499
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSettingsText(Lccsanandroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7605
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 7606
    invoke-virtual {p0}, Lccsanandroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 7608
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getShortcutId(Lccsanandroid/app/Notification;)Ljava/lang/String;
    .locals 2
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7594
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 7595
    invoke-virtual {p0}, Lccsanandroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7597
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getShowWhen(Lccsanandroid/app/Notification;)Z
    .locals 2
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7450
    iget-object v0, p0, Lccsanandroid/app/Notification;->extras:Lccsanandroid/os/Bundle;

    const-string v1, "android.showWhen"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getSortKey(Lccsanandroid/app/Notification;)Ljava/lang/String;
    .locals 3
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7541
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 7542
    invoke-virtual {p0}, Lccsanandroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7543
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const-string v2, "android.support.sortKey"

    if-lt v0, v1, :cond_1

    .line 7544
    iget-object v0, p0, Lccsanandroid/app/Notification;->extras:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, v2}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7545
    :cond_1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 7546
    invoke-static {p0}, Lccsanandroidx/core/app/NotificationCompatJellybean;->getExtras(Lccsanandroid/app/Notification;)Lccsanandroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7549
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSubText(Lccsanandroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7393
    iget-object v0, p0, Lccsanandroid/app/Notification;->extras:Lccsanandroid/os/Bundle;

    const-string v1, "android.subText"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeoutAfter(Lccsanandroid/app/Notification;)J
    .locals 2
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7569
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 7570
    invoke-virtual {p0}, Lccsanandroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v0

    return-wide v0

    .line 7572
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getUsesChronometer(Lccsanandroid/app/Notification;)Z
    .locals 2
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7458
    iget-object v0, p0, Lccsanandroid/app/Notification;->extras:Lccsanandroid/os/Bundle;

    const-string v1, "android.showChronometer"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getVisibility(Lccsanandroid/app/Notification;)I
    .locals 2
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7487
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 7488
    iget v0, p0, Lccsanandroid/app/Notification;->visibility:I

    return v0

    .line 7490
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isGroupSummary(Lccsanandroid/app/Notification;)Z
    .locals 4
    .param p0, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7516
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_1

    .line 7517
    iget v0, p0, Lccsanandroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 7518
    :cond_1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const-string v3, "android.support.isGroupSummary"

    if-lt v0, v2, :cond_2

    .line 7519
    iget-object v0, p0, Lccsanandroid/app/Notification;->extras:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, v3}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 7520
    :cond_2
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_3

    .line 7521
    invoke-static {p0}, Lccsanandroidx/core/app/NotificationCompatJellybean;->getExtras(Lccsanandroid/app/Notification;)Lccsanandroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 7524
    :cond_3
    return v1
.end method
