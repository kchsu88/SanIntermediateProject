.class public Lccsancom/vungle/warren/model/PlacementDBAdapter;
.super Ljava/lang/Object;
.source "PlacementDBAdapter.java"

# interfaces
.implements Lccsancom/vungle/warren/persistence/DBAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/model/PlacementDBAdapter$PlacementColumns;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/vungle/warren/persistence/DBAdapter<",
        "Lccsancom/vungle/warren/model/Placement;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATE_PLACEMENT_TABLE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS placement(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE, incentivized SHORT, auto_cached SHORT, is_valid SHORT, wakeup_time NUMERIC, header_bidding SHORT, refresh_duration NUMERIC, supported_template_types NUMERIC, ad_size TEXT, autocache_priority NUMERIC, max_hb_cache NUMERIC, recommended_ad_size TEXT)"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromContentValues(Lccsanandroid/content/ContentValues;)Lccsancom/vungle/warren/model/Placement;
    .locals 3
    .param p1, "values"    # Lccsanandroid/content/ContentValues;

    .line 35
    new-instance v0, Lccsancom/vungle/warren/model/Placement;

    invoke-direct {v0}, Lccsancom/vungle/warren/model/Placement;-><init>()V

    .line 36
    .local v0, "placement":Lccsancom/vungle/warren/model/Placement;
    const-string v1, "item_id"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    .line 37
    const-string v1, "wakeup_time"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lccsancom/vungle/warren/model/Placement;->wakeupTime:J

    .line 39
    const-string v1, "incentivized"

    invoke-static {p1, v1}, Lccsancom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Lccsanandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lccsancom/vungle/warren/model/Placement;->incentivized:Z

    .line 40
    const-string v1, "header_bidding"

    invoke-static {p1, v1}, Lccsancom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Lccsanandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lccsancom/vungle/warren/model/Placement;->headerBidding:Z

    .line 41
    const-string v1, "auto_cached"

    invoke-static {p1, v1}, Lccsancom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Lccsanandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lccsancom/vungle/warren/model/Placement;->autoCached:Z

    .line 42
    const-string v1, "is_valid"

    invoke-static {p1, v1}, Lccsancom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Lccsanandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lccsancom/vungle/warren/model/Placement;->isValid:Z

    .line 43
    const-string v1, "refresh_duration"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lccsancom/vungle/warren/model/Placement;->adRefreshDuration:I

    .line 44
    const-string v1, "supported_template_types"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lccsancom/vungle/warren/model/Placement;->placementAdType:I

    .line 45
    const-string v1, "ad_size"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/vungle/warren/AdConfig$AdSize;->fromName(Ljava/lang/String;)Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Placement;->adSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 46
    const-string v1, "autocache_priority"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lccsancom/vungle/warren/model/Placement;->autoCachePriority:I

    .line 47
    const-string v1, "max_hb_cache"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lccsancom/vungle/warren/model/Placement;->maxHbCache:I

    .line 48
    const-string v1, "recommended_ad_size"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/vungle/warren/AdConfig$AdSize;->fromName(Ljava/lang/String;)Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Placement;->recommendedAdSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 49
    return-object v0
.end method

.method public bridge synthetic fromContentValues(Lccsanandroid/content/ContentValues;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/model/PlacementDBAdapter;->fromContentValues(Lccsanandroid/content/ContentValues;)Lccsancom/vungle/warren/model/Placement;

    move-result-object p1

    return-object p1
.end method

.method public tableName()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "placement"

    return-object v0
.end method

.method public toContentValues(Lccsancom/vungle/warren/model/Placement;)Lccsanandroid/content/ContentValues;
    .locals 3
    .param p1, "item"    # Lccsancom/vungle/warren/model/Placement;

    .line 16
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 17
    .local v0, "contentValues":Lccsanandroid/content/ContentValues;
    iget-object v1, p1, Lccsancom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    const-string v2, "item_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-boolean v1, p1, Lccsancom/vungle/warren/model/Placement;->incentivized:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "incentivized"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 19
    iget-boolean v1, p1, Lccsancom/vungle/warren/model/Placement;->headerBidding:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "header_bidding"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 20
    iget-boolean v1, p1, Lccsancom/vungle/warren/model/Placement;->autoCached:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "auto_cached"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 21
    iget-wide v1, p1, Lccsancom/vungle/warren/model/Placement;->wakeupTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "wakeup_time"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 22
    iget-boolean v1, p1, Lccsancom/vungle/warren/model/Placement;->isValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_valid"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 23
    iget v1, p1, Lccsancom/vungle/warren/model/Placement;->adRefreshDuration:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "refresh_duration"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    iget v1, p1, Lccsancom/vungle/warren/model/Placement;->placementAdType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "supported_template_types"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 25
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Placement;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/vungle/warren/AdConfig$AdSize;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_size"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget v1, p1, Lccsancom/vungle/warren/model/Placement;->autoCachePriority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "autocache_priority"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    iget v1, p1, Lccsancom/vungle/warren/model/Placement;->maxHbCache:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "max_hb_cache"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 28
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Placement;->getRecommendedAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/vungle/warren/AdConfig$AdSize;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "recommended_ad_size"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-object v0
.end method

.method public bridge synthetic toContentValues(Ljava/lang/Object;)Lccsanandroid/content/ContentValues;
    .locals 0

    .line 12
    check-cast p1, Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/model/PlacementDBAdapter;->toContentValues(Lccsancom/vungle/warren/model/Placement;)Lccsanandroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method
