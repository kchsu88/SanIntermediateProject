.class public Lccsancom/vungle/warren/model/CacheBustDBAdapter;
.super Ljava/lang/Object;
.source "CacheBustDBAdapter.java"

# interfaces
.implements Lccsancom/vungle/warren/persistence/DBAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/model/CacheBustDBAdapter$CacheBustColumns;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/vungle/warren/persistence/DBAdapter<",
        "Lccsancom/vungle/warren/model/CacheBust;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATE_CACHE_BUST_TABLE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS cache_bust(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE, id TEXT, time_window_end INTEGER, id_type INTEGER, event_ids TEXT, timestamp_processed INTEGER )"

.field static final DELIMITER:Ljava/lang/String; = ";"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static arrayToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/String;

    .line 76
    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 79
    aget-object v0, p0, v1

    return-object v0

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 83
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 77
    .end local v0    # "result":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method static stringToArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 91
    :cond_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public fromContentValues(Lccsanandroid/content/ContentValues;)Lccsancom/vungle/warren/model/CacheBust;
    .locals 3
    .param p1, "values"    # Lccsanandroid/content/ContentValues;

    .line 36
    new-instance v0, Lccsancom/vungle/warren/model/CacheBust;

    invoke-direct {v0}, Lccsancom/vungle/warren/model/CacheBust;-><init>()V

    .line 37
    .local v0, "item":Lccsancom/vungle/warren/model/CacheBust;
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/CacheBust;->id:Ljava/lang/String;

    .line 38
    const-string v1, "time_window_end"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lccsancom/vungle/warren/model/CacheBust;->timeWindowEnd:J

    .line 40
    const-string v1, "id_type"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lccsancom/vungle/warren/model/CacheBust;->idType:I

    .line 41
    const-string v1, "event_ids"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/vungle/warren/model/CacheBustDBAdapter;->stringToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/CacheBust;->eventIds:[Ljava/lang/String;

    .line 42
    const-string v1, "timestamp_processed"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lccsancom/vungle/warren/model/CacheBust;->timestampProcessed:J

    .line 44
    return-object v0
.end method

.method public bridge synthetic fromContentValues(Lccsanandroid/content/ContentValues;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/model/CacheBustDBAdapter;->fromContentValues(Lccsanandroid/content/ContentValues;)Lccsancom/vungle/warren/model/CacheBust;

    move-result-object p1

    return-object p1
.end method

.method public tableName()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "cache_bust"

    return-object v0
.end method

.method public toContentValues(Lccsancom/vungle/warren/model/CacheBust;)Lccsanandroid/content/ContentValues;
    .locals 3
    .param p1, "item"    # Lccsancom/vungle/warren/model/CacheBust;

    .line 21
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 22
    .local v0, "contentValues":Lccsanandroid/content/ContentValues;
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/CacheBust;->calculateId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "item_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v1, p1, Lccsancom/vungle/warren/model/CacheBust;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-wide v1, p1, Lccsancom/vungle/warren/model/CacheBust;->timeWindowEnd:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time_window_end"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 26
    iget v1, p1, Lccsancom/vungle/warren/model/CacheBust;->idType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id_type"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    iget-object v1, p1, Lccsancom/vungle/warren/model/CacheBust;->eventIds:[Ljava/lang/String;

    invoke-static {v1}, Lccsancom/vungle/warren/model/CacheBustDBAdapter;->arrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_ids"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-wide v1, p1, Lccsancom/vungle/warren/model/CacheBust;->timestampProcessed:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp_processed"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 30
    return-object v0
.end method

.method public bridge synthetic toContentValues(Ljava/lang/Object;)Lccsanandroid/content/ContentValues;
    .locals 0

    .line 14
    check-cast p1, Lccsancom/vungle/warren/model/CacheBust;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/model/CacheBustDBAdapter;->toContentValues(Lccsancom/vungle/warren/model/CacheBust;)Lccsanandroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method
