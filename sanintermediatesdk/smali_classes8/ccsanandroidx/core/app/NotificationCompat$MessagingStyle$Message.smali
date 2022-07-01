.class public final Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/NotificationCompat$MessagingStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field static final KEY_DATA_MIME_TYPE:Ljava/lang/String; = "type"

.field static final KEY_DATA_URI:Ljava/lang/String; = "uri"

.field static final KEY_EXTRAS_BUNDLE:Ljava/lang/String; = "extras"

.field static final KEY_NOTIFICATION_PERSON:Ljava/lang/String; = "sender_person"

.field static final KEY_PERSON:Ljava/lang/String; = "person"

.field static final KEY_SENDER:Ljava/lang/String; = "sender"

.field static final KEY_TEXT:Ljava/lang/String; = "text"

.field static final KEY_TIMESTAMP:Ljava/lang/String; = "time"


# instance fields
.field private mDataMimeType:Ljava/lang/String;

.field private mDataUri:Lccsanandroid/net/Uri;

.field private mExtras:Lccsanandroid/os/Bundle;

.field private final mPerson:Lccsanandroidx/core/app/Person;

.field private final mText:Ljava/lang/CharSequence;

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;JLccsanandroidx/core/app/Person;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "person"    # Lccsanandroidx/core/app/Person;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "timestamp",
            "person"
        }
    .end annotation

    .line 3779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3764
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->mExtras:Lccsanandroid/os/Bundle;

    .line 3780
    iput-object p1, p0, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    .line 3781
    iput-wide p2, p0, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    .line 3782
    iput-object p4, p0, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Lccsanandroidx/core/app/Person;

    .line 3783
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "timestamp",
            "sender"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3801
    new-instance v0, Lccsanandroidx/core/app/Person$Builder;

    invoke-direct {v0}, Lccsanandroidx/core/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p4}, Lccsanandroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/core/app/Person$Builder;->build()Lccsanandroidx/core/app/Person;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLccsanandroidx/core/app/Person;)V

    .line 3802
    return-void
.end method

.method static getBundleArrayForMessages(Ljava/util/List;)[Lccsanandroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;",
            ">;)[",
            "Lccsanandroid/os/Bundle;"
        }
    .end annotation

    .line 3923
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lccsanandroid/os/Bundle;

    .line 3924
    .local v0, "bundles":[Lccsanandroid/os/Bundle;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 3925
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3926
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;

    invoke-direct {v3}, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->toBundle()Lccsanandroid/os/Bundle;

    move-result-object v3

    aput-object v3, v0, v2

    .line 3925
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3928
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method static getMessageFromBundle(Lccsanandroid/os/Bundle;)Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .locals 11
    .param p0, "bundle"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 3948
    const-string/jumbo v0, "uri"

    const-string v1, "extras"

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "sender"

    const-string/jumbo v4, "sender_person"

    const-string v5, "person"

    const-string/jumbo v6, "time"

    const-string/jumbo v7, "text"

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0, v7}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0, v6}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_1

    .line 3952
    :cond_0
    const/4 v9, 0x0

    .line 3953
    .local v9, "person":Lccsanandroidx/core/app/Person;
    invoke-virtual {p0, v5}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3955
    invoke-virtual {p0, v5}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lccsanandroidx/core/app/Person;->fromBundle(Lccsanandroid/os/Bundle;)Lccsanandroidx/core/app/Person;

    move-result-object v3

    move-object v9, v3

    goto :goto_0

    .line 3956
    :cond_1
    invoke-virtual {p0, v4}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget v5, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-lt v5, v10, :cond_2

    .line 3959
    nop

    .line 3960
    invoke-virtual {p0, v4}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lccsanandroid/app/Person;

    .line 3959
    invoke-static {v3}, Lccsanandroidx/core/app/Person;->fromAndroidPerson(Lccsanandroid/app/Person;)Lccsanandroidx/core/app/Person;

    move-result-object v3

    move-object v9, v3

    goto :goto_0

    .line 3961
    :cond_2
    invoke-virtual {p0, v3}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3963
    new-instance v4, Lccsanandroidx/core/app/Person$Builder;

    invoke-direct {v4}, Lccsanandroidx/core/app/Person$Builder;-><init>()V

    .line 3964
    invoke-virtual {p0, v3}, Lccsanandroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Lccsanandroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/Person$Builder;

    move-result-object v3

    .line 3965
    invoke-virtual {v3}, Lccsanandroidx/core/app/Person$Builder;->build()Lccsanandroidx/core/app/Person;

    move-result-object v3

    move-object v9, v3

    .line 3968
    :cond_3
    :goto_0
    new-instance v3, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;

    .line 3969
    invoke-virtual {p0, v7}, Lccsanandroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 3970
    invoke-virtual {p0, v6}, Lccsanandroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6, v9}, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLccsanandroidx/core/app/Person;)V

    .line 3973
    .local v3, "message":Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;
    invoke-virtual {p0, v2}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3974
    invoke-virtual {p0, v0}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3975
    invoke-virtual {p0, v2}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3976
    invoke-virtual {p0, v0}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lccsanandroid/net/Uri;

    .line 3975
    invoke-virtual {v3, v2, v0}, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->setData(Ljava/lang/String;Lccsanandroid/net/Uri;)Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;

    .line 3978
    :cond_4
    invoke-virtual {p0, v1}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3979
    invoke-virtual {v3}, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v1}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->putAll(Lccsanandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3981
    :cond_5
    return-object v3

    .line 3949
    .end local v3    # "message":Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .end local v9    # "person":Lccsanandroidx/core/app/Person;
    :cond_6
    :goto_1
    return-object v8

    .line 3982
    :catch_0
    move-exception v0

    .line 3983
    .local v0, "e":Ljava/lang/ClassCastException;
    return-object v8
.end method

.method static getMessagesFromBundleArray([Lccsanandroid/os/Parcelable;)Ljava/util/List;
    .locals 3
    .param p0, "bundles"    # [Lccsanandroid/os/Parcelable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lccsanandroid/os/Parcelable;",
            ")",
            "Ljava/util/List<",
            "Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .line 3933
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3934
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 3935
    aget-object v2, p0, v1

    instance-of v2, v2, Lccsanandroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 3936
    aget-object v2, p0, v1

    check-cast v2, Lccsanandroid/os/Bundle;

    invoke-static {v2}, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->getMessageFromBundle(Lccsanandroid/os/Bundle;)Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;

    move-result-object v2

    .line 3937
    .local v2, "message":Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;
    if-eqz v2, :cond_0

    .line 3938
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3934
    .end local v2    # "message":Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3942
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private toBundle()Lccsanandroid/os/Bundle;
    .locals 4

    .line 3892
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 3893
    .local v0, "bundle":Lccsanandroid/os/Bundle;
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 3894
    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3896
    :cond_0
    iget-wide v1, p0, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    const-string/jumbo v3, "time"

    invoke-virtual {v0, v3, v1, v2}, Lccsanandroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3897
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Lccsanandroidx/core/app/Person;

    if-eqz v1, :cond_2

    .line 3900
    invoke-virtual {v1}, Lccsanandroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v2, "sender"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3903
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 3904
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Lccsanandroidx/core/app/Person;

    invoke-virtual {v1}, Lccsanandroidx/core/app/Person;->toAndroidPerson()Lccsanandroid/app/Person;

    move-result-object v1

    const-string/jumbo v2, "sender_person"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    goto :goto_0

    .line 3906
    :cond_1
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Lccsanandroidx/core/app/Person;

    invoke-virtual {v1}, Lccsanandroidx/core/app/Person;->toBundle()Lccsanandroid/os/Bundle;

    move-result-object v1

    const-string v2, "person"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 3909
    :cond_2
    :goto_0
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 3910
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3912
    :cond_3
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Lccsanandroid/net/Uri;

    if-eqz v1, :cond_4

    .line 3913
    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 3915
    :cond_4
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->mExtras:Lccsanandroid/os/Bundle;

    if-eqz v1, :cond_5

    .line 3916
    const-string v2, "extras"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 3918
    :cond_5
    return-object v0
.end method


# virtual methods
.method public getDataMimeType()Ljava/lang/String;
    .locals 1

    .line 3879
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataUri()Lccsanandroid/net/Uri;
    .locals 1

    .line 3888
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Lccsanandroid/net/Uri;

    return-object v0
.end method

.method public getExtras()Lccsanandroid/os/Bundle;
    .locals 1

    .line 3856
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->mExtras:Lccsanandroid/os/Bundle;

    return-object v0
.end method

.method public getPerson()Lccsanandroidx/core/app/Person;
    .locals 1

    .line 3873
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Lccsanandroidx/core/app/Person;

    return-object v0
.end method

.method public getSender()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3867
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Lccsanandroidx/core/app/Person;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 3845
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 3850
    iget-wide v0, p0, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    return-wide v0
.end method

.method public setData(Ljava/lang/String;Lccsanandroid/net/Uri;)Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .locals 0
    .param p1, "dataMimeType"    # Ljava/lang/String;
    .param p2, "dataUri"    # Lccsanandroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataMimeType",
            "dataUri"
        }
    .end annotation

    .line 3834
    iput-object p1, p0, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    .line 3835
    iput-object p2, p0, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Lccsanandroid/net/Uri;

    .line 3836
    return-object p0
.end method

.method toAndroidMessage()Lccsanandroid/app/Notification$MessagingStyle$Message;
    .locals 6

    .line 3997
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Lccsanandroidx/core/app/Person;

    move-result-object v0

    .line 3999
    .local v0, "person":Lccsanandroidx/core/app/Person;
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_1

    .line 4000
    new-instance v1, Lccsanandroid/app/Notification$MessagingStyle$Message;

    .line 4001
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->getTimestamp()J

    move-result-wide v4

    .line 4002
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/core/app/Person;->toAndroidPerson()Lccsanandroid/app/Person;

    move-result-object v2

    :goto_0
    invoke-direct {v1, v3, v4, v5, v2}, Lccsanandroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLccsanandroid/app/Person;)V

    .local v1, "frameworkMessage":Lccsanandroid/app/Notification$MessagingStyle$Message;
    goto :goto_2

    .line 4004
    .end local v1    # "frameworkMessage":Lccsanandroid/app/Notification$MessagingStyle$Message;
    :cond_1
    new-instance v1, Lccsanandroid/app/Notification$MessagingStyle$Message;

    .line 4005
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->getTimestamp()J

    move-result-wide v4

    .line 4006
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lccsanandroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    invoke-direct {v1, v3, v4, v5, v2}, Lccsanandroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    .line 4009
    .restart local v1    # "frameworkMessage":Lccsanandroid/app/Notification$MessagingStyle$Message;
    :goto_2
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4010
    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lccsanandroidx/core/app/NotificationCompat$MessagingStyle$Message;->getDataUri()Lccsanandroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanandroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Lccsanandroid/net/Uri;)Lccsanandroid/app/Notification$MessagingStyle$Message;

    .line 4012
    :cond_3
    return-object v1
.end method
