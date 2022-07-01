.class public Lccsancom/vungle/warren/model/AnalyticUrlDBAdapter;
.super Ljava/lang/Object;
.source "AnalyticUrlDBAdapter.java"

# interfaces
.implements Lccsancom/vungle/warren/persistence/DBAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/model/AnalyticUrlDBAdapter$AnalyticsUrlColumns;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/vungle/warren/persistence/DBAdapter<",
        "Lccsancom/vungle/warren/model/AnalyticUrl;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATE_ANALYTICS_URL_TABLE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS analytic_url(_id INTEGER PRIMARY KEY AUTOINCREMENT,  item_id TEXT UNIQUE)"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromContentValues(Lccsanandroid/content/ContentValues;)Lccsancom/vungle/warren/model/AnalyticUrl;
    .locals 2
    .param p1, "values"    # Lccsanandroid/content/ContentValues;

    .line 21
    const-string v0, "item_id"

    invoke-virtual {p1, v0}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lccsancom/vungle/warren/model/AnalyticUrl;

    invoke-direct {v1, v0}, Lccsancom/vungle/warren/model/AnalyticUrl;-><init>(Ljava/lang/String;)V

    .line 23
    .local v1, "item":Lccsancom/vungle/warren/model/AnalyticUrl;
    return-object v1
.end method

.method public bridge synthetic fromContentValues(Lccsanandroid/content/ContentValues;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/model/AnalyticUrlDBAdapter;->fromContentValues(Lccsanandroid/content/ContentValues;)Lccsancom/vungle/warren/model/AnalyticUrl;

    move-result-object p1

    return-object p1
.end method

.method public tableName()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "analytic_url"

    return-object v0
.end method

.method public toContentValues(Lccsancom/vungle/warren/model/AnalyticUrl;)Lccsanandroid/content/ContentValues;
    .locals 3
    .param p1, "item"    # Lccsancom/vungle/warren/model/AnalyticUrl;

    .line 13
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 14
    .local v0, "contentValues":Lccsanandroid/content/ContentValues;
    iget-object v1, p1, Lccsancom/vungle/warren/model/AnalyticUrl;->url:Ljava/lang/String;

    const-string v2, "item_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-object v0
.end method

.method public bridge synthetic toContentValues(Ljava/lang/Object;)Lccsanandroid/content/ContentValues;
    .locals 0

    .line 10
    check-cast p1, Lccsancom/vungle/warren/model/AnalyticUrl;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/model/AnalyticUrlDBAdapter;->toContentValues(Lccsancom/vungle/warren/model/AnalyticUrl;)Lccsanandroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method
