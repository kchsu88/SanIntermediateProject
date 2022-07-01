.class public Lccsanandroidx/room/util/CursorUtil;
.super Ljava/lang/Object;
.source "CursorUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public static copyAndClose(Lccsanandroid/database/Cursor;)Lccsanandroid/database/Cursor;
    .locals 5
    .param p0, "c"    # Lccsanandroid/database/Cursor;

    .line 46
    :try_start_0
    new-instance v0, Lccsanandroid/database/MatrixCursor;

    invoke-interface {p0}, Lccsanandroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lccsanandroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 47
    .local v0, "matrixCursor":Lccsanandroid/database/MatrixCursor;
    :goto_0
    invoke-interface {p0}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    invoke-interface {p0}, Lccsanandroid/database/Cursor;->getColumnCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 49
    .local v1, "row":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p0}, Lccsanandroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 50
    invoke-interface {p0, v2}, Lccsanandroid/database/Cursor;->getType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 67
    new-instance v3, Ljava/lang/IllegalStateException;

    goto :goto_3

    .line 64
    :pswitch_0
    invoke-interface {p0, v2}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    .line 65
    goto :goto_2

    .line 61
    :pswitch_1
    invoke-interface {p0, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 62
    goto :goto_2

    .line 58
    :pswitch_2
    invoke-interface {p0, v2}, Lccsanandroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    .line 59
    goto :goto_2

    .line 55
    :pswitch_3
    invoke-interface {p0, v2}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 56
    goto :goto_2

    .line 52
    :pswitch_4
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 53
    nop

    .line 49
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 67
    :goto_3
    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p0    # "c":Lccsanandroid/database/Cursor;
    throw v3

    .line 70
    .end local v2    # "i":I
    .restart local p0    # "c":Lccsanandroid/database/Cursor;
    :cond_0
    invoke-virtual {v0, v1}, Lccsanandroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v1    # "row":[Ljava/lang/Object;
    goto :goto_0

    .line 73
    :cond_1
    invoke-interface {p0}, Lccsanandroid/database/Cursor;->close()V

    .line 74
    nop

    .line 75
    return-object v0

    .line 73
    .end local v0    # "matrixCursor":Lccsanandroid/database/MatrixCursor;
    :catchall_0
    move-exception v0

    invoke-interface {p0}, Lccsanandroid/database/Cursor;->close()V

    .line 74
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getColumnIndex(Lccsanandroid/database/Cursor;Ljava/lang/String;)I
    .locals 3
    .param p0, "c"    # Lccsanandroid/database/Cursor;
    .param p1, "name"    # Ljava/lang/String;

    .line 87
    invoke-interface {p0, p1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 88
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 89
    return v0

    .line 91
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I
    .locals 3
    .param p0, "c"    # Lccsanandroid/database/Cursor;
    .param p1, "name"    # Ljava/lang/String;

    .line 104
    invoke-interface {p0, p1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 106
    return v0

    .line 108
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    return v1
.end method
