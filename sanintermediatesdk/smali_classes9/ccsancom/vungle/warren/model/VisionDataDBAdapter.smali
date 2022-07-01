.class public Lccsancom/vungle/warren/model/VisionDataDBAdapter;
.super Ljava/lang/Object;
.source "VisionDataDBAdapter.java"

# interfaces
.implements Lccsancom/vungle/warren/persistence/DBAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/model/VisionDataDBAdapter$VisionDataColumns;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/vungle/warren/persistence/DBAdapter<",
        "Lccsancom/vungle/warren/model/VisionData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATE_VISION_TABLE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS vision_data(_id INTEGER PRIMARY KEY AUTOINCREMENT, timestamp NUMERIC, creative TEXT, campaign TEXT, advertiser TEXT )"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromContentValues(Lccsanandroid/content/ContentValues;)Lccsancom/vungle/warren/model/VisionData;
    .locals 7
    .param p1, "values"    # Lccsanandroid/content/ContentValues;

    .line 23
    new-instance v6, Lccsancom/vungle/warren/model/VisionData;

    .line 24
    const-string v0, "timestamp"

    invoke-virtual {p1, v0}, Lccsanandroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 25
    const-string v0, "creative"

    invoke-virtual {p1, v0}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 26
    const-string v0, "campaign"

    invoke-virtual {p1, v0}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 27
    const-string v0, "advertiser"

    invoke-virtual {p1, v0}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lccsancom/vungle/warren/model/VisionData;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-object v6
.end method

.method public bridge synthetic fromContentValues(Lccsanandroid/content/ContentValues;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/model/VisionDataDBAdapter;->fromContentValues(Lccsanandroid/content/ContentValues;)Lccsancom/vungle/warren/model/VisionData;

    move-result-object p1

    return-object p1
.end method

.method public tableName()Ljava/lang/String;
    .locals 1

    .line 32
    const-string v0, "vision_data"

    return-object v0
.end method

.method public toContentValues(Lccsancom/vungle/warren/model/VisionData;)Lccsanandroid/content/ContentValues;
    .locals 3
    .param p1, "item"    # Lccsancom/vungle/warren/model/VisionData;

    .line 12
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 13
    .local v0, "contentValues":Lccsanandroid/content/ContentValues;
    iget-wide v1, p1, Lccsancom/vungle/warren/model/VisionData;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 14
    iget-object v1, p1, Lccsancom/vungle/warren/model/VisionData;->creative:Ljava/lang/String;

    const-string v2, "creative"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v1, p1, Lccsancom/vungle/warren/model/VisionData;->campaign:Ljava/lang/String;

    const-string v2, "campaign"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v1, p1, Lccsancom/vungle/warren/model/VisionData;->advertiser:Ljava/lang/String;

    const-string v2, "advertiser"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-object v0
.end method

.method public bridge synthetic toContentValues(Ljava/lang/Object;)Lccsanandroid/content/ContentValues;
    .locals 0

    .line 9
    check-cast p1, Lccsancom/vungle/warren/model/VisionData;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/model/VisionDataDBAdapter;->toContentValues(Lccsancom/vungle/warren/model/VisionData;)Lccsanandroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method
