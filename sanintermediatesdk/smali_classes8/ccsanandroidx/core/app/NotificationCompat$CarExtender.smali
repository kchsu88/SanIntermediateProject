.class public final Lccsanandroidx/core/app/NotificationCompat$CarExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Lccsanandroidx/core/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarExtender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    }
.end annotation


# static fields
.field static final EXTRA_CAR_EXTENDER:Ljava/lang/String; = "android.car.EXTENSIONS"

.field private static final EXTRA_COLOR:Ljava/lang/String; = "app_color"

.field private static final EXTRA_CONVERSATION:Ljava/lang/String; = "car_conversation"

.field static final EXTRA_INVISIBLE_ACTIONS:Ljava/lang/String; = "invisible_actions"

.field private static final EXTRA_LARGE_ICON:Ljava/lang/String; = "large_icon"

.field private static final KEY_AUTHOR:Ljava/lang/String; = "author"

.field private static final KEY_MESSAGES:Ljava/lang/String; = "messages"

.field private static final KEY_ON_READ:Ljava/lang/String; = "on_read"

.field private static final KEY_ON_REPLY:Ljava/lang/String; = "on_reply"

.field private static final KEY_PARTICIPANTS:Ljava/lang/String; = "participants"

.field private static final KEY_REMOTE_INPUT:Ljava/lang/String; = "remote_input"

.field private static final KEY_TEXT:Ljava/lang/String; = "text"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private mColor:I

.field private mLargeIcon:Lccsanandroid/graphics/Bitmap;

.field private mUnreadConversation:Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6170
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    .line 6176
    return-void
.end method

.method public constructor <init>(Lccsanandroid/app/Notification;)V
    .locals 3
    .param p1, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 6183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6170
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    .line 6184
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 6185
    return-void

    .line 6188
    :cond_0
    invoke-static {p1}, Lccsanandroidx/core/app/NotificationCompat;->getExtras(Lccsanandroid/app/Notification;)Lccsanandroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6189
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lccsanandroidx/core/app/NotificationCompat;->getExtras(Lccsanandroid/app/Notification;)Lccsanandroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.car.EXTENSIONS"

    invoke-virtual {v1, v2}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v1

    .line 6190
    .local v1, "carBundle":Lccsanandroid/os/Bundle;
    :goto_0
    if-eqz v1, :cond_2

    .line 6191
    const-string v2, "large_icon"

    invoke-virtual {v1, v2}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lccsanandroid/graphics/Bitmap;

    iput-object v2, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender;->mLargeIcon:Lccsanandroid/graphics/Bitmap;

    .line 6192
    const-string v2, "app_color"

    invoke-virtual {v1, v2, v0}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    .line 6194
    const-string v0, "car_conversation"

    invoke-virtual {v1, v0}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v0

    .line 6195
    .local v0, "b":Lccsanandroid/os/Bundle;
    invoke-static {v0}, Lccsanandroidx/core/app/NotificationCompat$CarExtender;->getUnreadConversationFromBundle(Lccsanandroid/os/Bundle;)Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    move-result-object v2

    iput-object v2, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender;->mUnreadConversation:Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    .line 6197
    .end local v0    # "b":Lccsanandroid/os/Bundle;
    :cond_2
    return-void
.end method

.method private static getBundleForUnreadConversation(Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;)Lccsanandroid/os/Bundle;
    .locals 7
    .param p0, "uc"    # Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uc"
        }
    .end annotation

    .line 6255
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 6256
    .local v0, "b":Lccsanandroid/os/Bundle;
    const/4 v1, 0x0

    .line 6257
    .local v1, "author":Ljava/lang/String;
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 6258
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 6260
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getMessages()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Lccsanandroid/os/Parcelable;

    .line 6261
    .local v2, "messages":[Lccsanandroid/os/Parcelable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 6262
    new-instance v4, Lccsanandroid/os/Bundle;

    invoke-direct {v4}, Lccsanandroid/os/Bundle;-><init>()V

    .line 6263
    .local v4, "m":Lccsanandroid/os/Bundle;
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getMessages()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    const-string/jumbo v6, "text"

    invoke-virtual {v4, v6, v5}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6264
    const-string v5, "author"

    invoke-virtual {v4, v5, v1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6265
    aput-object v4, v2, v3

    .line 6261
    .end local v4    # "m":Lccsanandroid/os/Bundle;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6267
    .end local v3    # "i":I
    :cond_1
    const-string v3, "messages"

    invoke-virtual {v0, v3, v2}, Lccsanandroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Lccsanandroid/os/Parcelable;)V

    .line 6268
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getRemoteInput()Lccsanandroidx/core/app/RemoteInput;

    move-result-object v3

    .line 6269
    .local v3, "remoteInputCompat":Lccsanandroidx/core/app/RemoteInput;
    if-eqz v3, :cond_2

    .line 6270
    new-instance v4, Lccsanandroid/app/RemoteInput$Builder;

    .line 6271
    invoke-virtual {v3}, Lccsanandroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lccsanandroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 6272
    invoke-virtual {v3}, Lccsanandroidx/core/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsanandroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Lccsanandroid/app/RemoteInput$Builder;

    move-result-object v4

    .line 6273
    invoke-virtual {v3}, Lccsanandroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsanandroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Lccsanandroid/app/RemoteInput$Builder;

    move-result-object v4

    .line 6274
    invoke-virtual {v3}, Lccsanandroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v5

    invoke-virtual {v4, v5}, Lccsanandroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Lccsanandroid/app/RemoteInput$Builder;

    move-result-object v4

    .line 6275
    invoke-virtual {v3}, Lccsanandroidx/core/app/RemoteInput;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsanandroid/app/RemoteInput$Builder;->addExtras(Lccsanandroid/os/Bundle;)Lccsanandroid/app/RemoteInput$Builder;

    move-result-object v4

    .line 6276
    invoke-virtual {v4}, Lccsanandroid/app/RemoteInput$Builder;->build()Lccsanandroid/app/RemoteInput;

    move-result-object v4

    .line 6277
    .local v4, "remoteInput":Lccsanandroid/app/RemoteInput;
    const-string v5, "remote_input"

    invoke-virtual {v0, v5, v4}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 6279
    .end local v4    # "remoteInput":Lccsanandroid/app/RemoteInput;
    :cond_2
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getReplyPendingIntent()Lccsanandroid/app/PendingIntent;

    move-result-object v4

    const-string v5, "on_reply"

    invoke-virtual {v0, v5, v4}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 6280
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getReadPendingIntent()Lccsanandroid/app/PendingIntent;

    move-result-object v4

    const-string v5, "on_read"

    invoke-virtual {v0, v5, v4}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 6281
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "participants"

    invoke-virtual {v0, v5, v4}, Lccsanandroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 6282
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getLatestTimestamp()J

    move-result-wide v4

    const-string/jumbo v6, "timestamp"

    invoke-virtual {v0, v6, v4, v5}, Lccsanandroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6283
    return-object v0
.end method

.method private static getUnreadConversationFromBundle(Lccsanandroid/os/Bundle;)Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    .locals 24
    .param p0, "b"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 6201
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6202
    return-object v1

    .line 6204
    :cond_0
    const-string v2, "messages"

    invoke-virtual {v0, v2}, Lccsanandroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Lccsanandroid/os/Parcelable;

    move-result-object v2

    .line 6205
    .local v2, "parcelableMessages":[Lccsanandroid/os/Parcelable;
    const/4 v3, 0x0

    .line 6206
    .local v3, "messages":[Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 6207
    array-length v4, v2

    new-array v4, v4, [Ljava/lang/String;

    .line 6208
    .local v4, "tmp":[Ljava/lang/String;
    const/4 v5, 0x1

    .line 6209
    .local v5, "success":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_3

    .line 6210
    aget-object v7, v2, v6

    instance-of v7, v7, Lccsanandroid/os/Bundle;

    if-nez v7, :cond_1

    .line 6211
    const/4 v5, 0x0

    .line 6212
    goto :goto_1

    .line 6214
    :cond_1
    aget-object v7, v2, v6

    check-cast v7, Lccsanandroid/os/Bundle;

    const-string/jumbo v8, "text"

    invoke-virtual {v7, v8}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 6215
    aget-object v7, v4, v6

    if-nez v7, :cond_2

    .line 6216
    const/4 v5, 0x0

    .line 6217
    goto :goto_1

    .line 6209
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 6220
    .end local v6    # "i":I
    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    .line 6221
    move-object v3, v4

    goto :goto_2

    .line 6223
    :cond_4
    return-object v1

    .line 6227
    .end local v4    # "tmp":[Ljava/lang/String;
    .end local v5    # "success":Z
    :cond_5
    :goto_2
    const-string v4, "on_read"

    invoke-virtual {v0, v4}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lccsanandroid/app/PendingIntent;

    .line 6228
    .local v4, "onRead":Lccsanandroid/app/PendingIntent;
    const-string v5, "on_reply"

    invoke-virtual {v0, v5}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lccsanandroid/app/PendingIntent;

    .line 6230
    .local v5, "onReply":Lccsanandroid/app/PendingIntent;
    const-string v6, "remote_input"

    invoke-virtual {v0, v6}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lccsanandroid/app/RemoteInput;

    .line 6232
    .local v14, "remoteInput":Lccsanandroid/app/RemoteInput;
    const-string v6, "participants"

    invoke-virtual {v0, v6}, Lccsanandroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 6233
    .local v15, "participants":[Ljava/lang/String;
    if-eqz v15, :cond_9

    array-length v6, v15

    const/4 v7, 0x1

    if-eq v6, v7, :cond_6

    goto :goto_5

    .line 6237
    :cond_6
    if-eqz v14, :cond_8

    .line 6238
    new-instance v1, Lccsanandroidx/core/app/RemoteInput;

    invoke-virtual {v14}, Lccsanandroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v17

    .line 6239
    invoke-virtual {v14}, Lccsanandroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v18

    .line 6240
    invoke-virtual {v14}, Lccsanandroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v19

    .line 6241
    invoke-virtual {v14}, Lccsanandroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v20

    .line 6242
    sget v6, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v6, v7, :cond_7

    .line 6243
    invoke-virtual {v14}, Lccsanandroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v6

    move/from16 v21, v6

    goto :goto_3

    .line 6244
    :cond_7
    const/4 v6, 0x0

    const/16 v21, 0x0

    .line 6245
    :goto_3
    invoke-virtual {v14}, Lccsanandroid/app/RemoteInput;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v23}, Lccsanandroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILccsanandroid/os/Bundle;Ljava/util/Set;)V

    move-object v8, v1

    goto :goto_4

    .line 6247
    :cond_8
    move-object v8, v1

    :goto_4
    nop

    .line 6249
    .local v8, "remoteInputCompat":Lccsanandroidx/core/app/RemoteInput;
    new-instance v1, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    .line 6250
    const-string/jumbo v6, "timestamp"

    invoke-virtual {v0, v6}, Lccsanandroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object v6, v1

    move-object v7, v3

    move-object v9, v5

    move-object v10, v4

    move-object v11, v15

    invoke-direct/range {v6 .. v13}, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Lccsanandroidx/core/app/RemoteInput;Lccsanandroid/app/PendingIntent;Lccsanandroid/app/PendingIntent;[Ljava/lang/String;J)V

    .line 6249
    return-object v1

    .line 6234
    .end local v8    # "remoteInputCompat":Lccsanandroidx/core/app/RemoteInput;
    :cond_9
    :goto_5
    return-object v1
.end method


# virtual methods
.method public extend(Lccsanandroidx/core/app/NotificationCompat$Builder;)Lccsanandroidx/core/app/NotificationCompat$Builder;
    .locals 3
    .param p1, "builder"    # Lccsanandroidx/core/app/NotificationCompat$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 6294
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 6295
    return-object p1

    .line 6298
    :cond_0
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 6300
    .local v0, "carExtensions":Lccsanandroid/os/Bundle;
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender;->mLargeIcon:Lccsanandroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 6301
    const-string v2, "large_icon"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 6303
    :cond_1
    iget v1, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    if-eqz v1, :cond_2

    .line 6304
    const-string v2, "app_color"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6307
    :cond_2
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender;->mUnreadConversation:Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    if-eqz v1, :cond_3

    .line 6308
    invoke-static {v1}, Lccsanandroidx/core/app/NotificationCompat$CarExtender;->getBundleForUnreadConversation(Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;)Lccsanandroid/os/Bundle;

    move-result-object v1

    .line 6309
    .local v1, "b":Lccsanandroid/os/Bundle;
    const-string v2, "car_conversation"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 6312
    .end local v1    # "b":Lccsanandroid/os/Bundle;
    :cond_3
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.car.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 6313
    return-object p1
.end method

.method public getColor()I
    .locals 1

    .line 6336
    iget v0, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    return v0
.end method

.method public getLargeIcon()Lccsanandroid/graphics/Bitmap;
    .locals 1

    .line 6360
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender;->mLargeIcon:Lccsanandroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUnreadConversation()Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6388
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender;->mUnreadConversation:Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    return-object v0
.end method

.method public setColor(I)Lccsanandroidx/core/app/NotificationCompat$CarExtender;
    .locals 0
    .param p1, "color"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 6325
    iput p1, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    .line 6326
    return-object p0
.end method

.method public setLargeIcon(Lccsanandroid/graphics/Bitmap;)Lccsanandroidx/core/app/NotificationCompat$CarExtender;
    .locals 0
    .param p1, "largeIcon"    # Lccsanandroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "largeIcon"
        }
    .end annotation

    .line 6349
    iput-object p1, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender;->mLargeIcon:Lccsanandroid/graphics/Bitmap;

    .line 6350
    return-object p0
.end method

.method public setUnreadConversation(Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;)Lccsanandroidx/core/app/NotificationCompat$CarExtender;
    .locals 0
    .param p1, "unreadConversation"    # Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unreadConversation"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6375
    iput-object p1, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender;->mUnreadConversation:Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    .line 6376
    return-object p0
.end method
