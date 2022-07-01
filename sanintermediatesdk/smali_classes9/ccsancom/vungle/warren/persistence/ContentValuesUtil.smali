.class public Lccsancom/vungle/warren/persistence/ContentValuesUtil;
.super Ljava/lang/Object;
.source "ContentValuesUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Lccsanandroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 5
    .param p0, "contentValues"    # Lccsanandroid/content/ContentValues;
    .param p1, "name"    # Ljava/lang/String;

    .line 8
    invoke-virtual {p0, p1}, Lccsanandroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 11
    return v1

    .line 13
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 14
    :catch_0
    move-exception v2

    .line 15
    .local v2, "e":Ljava/lang/ClassCastException;
    instance-of v3, v0, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 21
    :cond_3
    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_5

    .line 22
    move-object v3, v0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 24
    :cond_5
    return v1
.end method
