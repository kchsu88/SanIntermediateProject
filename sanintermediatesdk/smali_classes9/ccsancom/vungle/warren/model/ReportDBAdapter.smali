.class public Lccsancom/vungle/warren/model/ReportDBAdapter;
.super Ljava/lang/Object;
.source "ReportDBAdapter.java"

# interfaces
.implements Lccsancom/vungle/warren/persistence/DBAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/model/ReportDBAdapter$ReportColumns;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/vungle/warren/persistence/DBAdapter<",
        "Lccsancom/vungle/warren/model/Report;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATE_REPORT_TABLE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS report(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE,appId TEXT, placementId TEXT, adToken TEXT, incentivized SHORT, header_bidding SHORT, adStartTime NUMERIC, url TEXT, ad_duration NUMERIC, tt_download NUMERIC, campaign TEXT, videoViewed NUMERIC, ad_type TEXT, template_id TEXT, was_CTAC_licked SHORT, clicked_through TEXT, errors TEXT, user_actions TEXT, user_id TEXT, ordinal INT, videoLength NUMERIC, status INT, ad_size TEXT, init_timestamp NUMERIC, asset_download_duration NUMERIC,play_remote_url SHORT )"


# instance fields
.field private gson:Lccsancom/google/gson/Gson;

.field stringType:Ljava/lang/reflect/Type;

.field userActionsType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lccsancom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lccsancom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lccsancom/google/gson/GsonBuilder;->create()Lccsancom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/model/ReportDBAdapter;->gson:Lccsancom/google/gson/Gson;

    .line 21
    new-instance v0, Lccsancom/vungle/warren/model/ReportDBAdapter$1;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/model/ReportDBAdapter$1;-><init>(Lccsancom/vungle/warren/model/ReportDBAdapter;)V

    .line 22
    invoke-virtual {v0}, Lccsancom/vungle/warren/model/ReportDBAdapter$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/model/ReportDBAdapter;->stringType:Ljava/lang/reflect/Type;

    .line 23
    new-instance v0, Lccsancom/vungle/warren/model/ReportDBAdapter$2;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/model/ReportDBAdapter$2;-><init>(Lccsancom/vungle/warren/model/ReportDBAdapter;)V

    .line 24
    invoke-virtual {v0}, Lccsancom/vungle/warren/model/ReportDBAdapter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/model/ReportDBAdapter;->userActionsType:Ljava/lang/reflect/Type;

    .line 23
    return-void
.end method


# virtual methods
.method public fromContentValues(Lccsanandroid/content/ContentValues;)Lccsancom/vungle/warren/model/Report;
    .locals 6
    .param p1, "values"    # Lccsanandroid/content/ContentValues;

    .line 62
    new-instance v0, Lccsancom/vungle/warren/model/Report;

    invoke-direct {v0}, Lccsancom/vungle/warren/model/Report;-><init>()V

    .line 65
    .local v0, "item":Lccsancom/vungle/warren/model/Report;
    const-string v1, "ad_duration"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lccsancom/vungle/warren/model/Report;->adDuration:J

    .line 66
    const-string v1, "adStartTime"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lccsancom/vungle/warren/model/Report;->adStartTime:J

    .line 67
    const-string v1, "adToken"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Report;->adToken:Ljava/lang/String;

    .line 68
    const-string v1, "ad_type"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Report;->adType:Ljava/lang/String;

    .line 69
    const-string v1, "appId"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Report;->appId:Ljava/lang/String;

    .line 70
    const-string v1, "campaign"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Report;->campaign:Ljava/lang/String;

    .line 71
    const-string v1, "ordinal"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lccsancom/vungle/warren/model/Report;->ordinal:I

    .line 72
    const-string v1, "placementId"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    .line 73
    const-string v1, "template_id"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Report;->templateId:Ljava/lang/String;

    .line 74
    const-string v1, "tt_download"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lccsancom/vungle/warren/model/Report;->ttDownload:J

    .line 75
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Report;->url:Ljava/lang/String;

    .line 76
    const-string v1, "user_id"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    .line 77
    const-string v1, "videoLength"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lccsancom/vungle/warren/model/Report;->videoLength:J

    .line 78
    const-string v1, "videoViewed"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lccsancom/vungle/warren/model/Report;->videoViewed:I

    .line 80
    const-string v1, "was_CTAC_licked"

    invoke-static {p1, v1}, Lccsancom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Lccsanandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lccsancom/vungle/warren/model/Report;->wasCTAClicked:Z

    .line 81
    const-string v1, "incentivized"

    invoke-static {p1, v1}, Lccsancom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Lccsanandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lccsancom/vungle/warren/model/Report;->incentivized:Z

    .line 82
    const-string v1, "header_bidding"

    invoke-static {p1, v1}, Lccsancom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Lccsanandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lccsancom/vungle/warren/model/Report;->headerBidding:Z

    .line 83
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lccsancom/vungle/warren/model/Report;->status:I

    .line 84
    const-string v1, "ad_size"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Report;->adSize:Ljava/lang/String;

    .line 86
    const-string v1, "init_timestamp"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lccsancom/vungle/warren/model/Report;->initTimeStamp:J

    .line 87
    const-string v1, "asset_download_duration"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lccsancom/vungle/warren/model/Report;->assetDownloadDuration:J

    .line 88
    const-string v1, "play_remote_url"

    invoke-static {p1, v1}, Lccsancom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Lccsanandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lccsancom/vungle/warren/model/Report;->playRemoteUrl:Z

    .line 90
    iget-object v1, p0, Lccsancom/vungle/warren/model/ReportDBAdapter;->gson:Lccsancom/google/gson/Gson;

    const-string v2, "clicked_through"

    invoke-virtual {p1, v2}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/vungle/warren/model/ReportDBAdapter;->stringType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lccsancom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 91
    .local v1, "clicks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lccsancom/vungle/warren/model/ReportDBAdapter;->gson:Lccsancom/google/gson/Gson;

    const-string v3, "errors"

    invoke-virtual {p1, v3}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccsancom/vungle/warren/model/ReportDBAdapter;->stringType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3, v4}, Lccsancom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 92
    .local v2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lccsancom/vungle/warren/model/ReportDBAdapter;->gson:Lccsancom/google/gson/Gson;

    const-string v4, "user_actions"

    invoke-virtual {p1, v4}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lccsancom/vungle/warren/model/ReportDBAdapter;->userActionsType:Ljava/lang/reflect/Type;

    invoke-virtual {v3, v4, v5}, Lccsancom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 94
    .local v3, "userActions":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Report$UserAction;>;"
    if-eqz v1, :cond_0

    iget-object v4, v0, Lccsancom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    :cond_0
    if-eqz v2, :cond_1

    iget-object v4, v0, Lccsancom/vungle/warren/model/Report;->errors:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    :cond_1
    if-eqz v3, :cond_2

    iget-object v4, v0, Lccsancom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    :cond_2
    return-object v0
.end method

.method public bridge synthetic fromContentValues(Lccsanandroid/content/ContentValues;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/model/ReportDBAdapter;->fromContentValues(Lccsanandroid/content/ContentValues;)Lccsancom/vungle/warren/model/Report;

    move-result-object p1

    return-object p1
.end method

.method public tableName()Ljava/lang/String;
    .locals 1

    .line 103
    const-string v0, "report"

    return-object v0
.end method

.method public toContentValues(Lccsancom/vungle/warren/model/Report;)Lccsanandroid/content/ContentValues;
    .locals 4
    .param p1, "item"    # Lccsancom/vungle/warren/model/Report;

    .line 28
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 29
    .local v0, "contentValues":Lccsanandroid/content/ContentValues;
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Report;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "item_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-wide v1, p1, Lccsancom/vungle/warren/model/Report;->adDuration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ad_duration"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 31
    iget-wide v1, p1, Lccsancom/vungle/warren/model/Report;->adStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "adStartTime"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 32
    iget-object v1, p1, Lccsancom/vungle/warren/model/Report;->adToken:Ljava/lang/String;

    const-string v2, "adToken"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, p1, Lccsancom/vungle/warren/model/Report;->adType:Ljava/lang/String;

    const-string v2, "ad_type"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p1, Lccsancom/vungle/warren/model/Report;->appId:Ljava/lang/String;

    const-string v2, "appId"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v1, p1, Lccsancom/vungle/warren/model/Report;->campaign:Ljava/lang/String;

    const-string v2, "campaign"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-boolean v1, p1, Lccsancom/vungle/warren/model/Report;->incentivized:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "incentivized"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 37
    iget-boolean v1, p1, Lccsancom/vungle/warren/model/Report;->headerBidding:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "header_bidding"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 38
    iget v1, p1, Lccsancom/vungle/warren/model/Report;->ordinal:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ordinal"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    iget-object v1, p1, Lccsancom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    const-string v2, "placementId"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v1, p1, Lccsancom/vungle/warren/model/Report;->templateId:Ljava/lang/String;

    const-string v2, "template_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-wide v1, p1, Lccsancom/vungle/warren/model/Report;->ttDownload:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "tt_download"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 42
    iget-object v1, p1, Lccsancom/vungle/warren/model/Report;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v1, p1, Lccsancom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    const-string v2, "user_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-wide v1, p1, Lccsancom/vungle/warren/model/Report;->videoLength:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "videoLength"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 45
    iget v1, p1, Lccsancom/vungle/warren/model/Report;->videoViewed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "videoViewed"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    iget-boolean v1, p1, Lccsancom/vungle/warren/model/Report;->wasCTAClicked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "was_CTAC_licked"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 47
    iget-object v1, p0, Lccsancom/vungle/warren/model/ReportDBAdapter;->gson:Lccsancom/google/gson/Gson;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lccsancom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lccsancom/vungle/warren/model/ReportDBAdapter;->userActionsType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lccsancom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_actions"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lccsancom/vungle/warren/model/ReportDBAdapter;->gson:Lccsancom/google/gson/Gson;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lccsancom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lccsancom/vungle/warren/model/ReportDBAdapter;->stringType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lccsancom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clicked_through"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lccsancom/vungle/warren/model/ReportDBAdapter;->gson:Lccsancom/google/gson/Gson;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lccsancom/vungle/warren/model/Report;->errors:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lccsancom/vungle/warren/model/ReportDBAdapter;->stringType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lccsancom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "errors"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget v1, p1, Lccsancom/vungle/warren/model/Report;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    iget-object v1, p1, Lccsancom/vungle/warren/model/Report;->adSize:Ljava/lang/String;

    const-string v2, "ad_size"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-wide v1, p1, Lccsancom/vungle/warren/model/Report;->initTimeStamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "init_timestamp"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    iget-wide v1, p1, Lccsancom/vungle/warren/model/Report;->assetDownloadDuration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "asset_download_duration"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    iget-boolean v1, p1, Lccsancom/vungle/warren/model/Report;->playRemoteUrl:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "play_remote_url"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 56
    return-object v0
.end method

.method public bridge synthetic toContentValues(Ljava/lang/Object;)Lccsanandroid/content/ContentValues;
    .locals 0

    .line 18
    check-cast p1, Lccsancom/vungle/warren/model/Report;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/model/ReportDBAdapter;->toContentValues(Lccsancom/vungle/warren/model/Report;)Lccsanandroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method
