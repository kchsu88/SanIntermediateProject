.class public final Lccsancom/san/convert/database/removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/convert/database/getDownloadingList;


# static fields
.field private static addDownloadListener:I

.field private static deleteDownItem:I

.field private static unifiedDownload:[I


# instance fields
.field private final IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

.field private final getDownloadingList:Lccsanandroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/room/EntityInsertionAdapter<",
            "Lccsancom/san/convert/database/ConvertIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final removeDownloadListener:Lccsanandroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lccsancom/san/convert/database/ConvertIntent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/convert/database/removeDownloadListener;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/convert/database/removeDownloadListener;->deleteDownItem:I

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/convert/database/removeDownloadListener;->unifiedDownload:[I

    return-void

    :array_0
    .array-data 4
        0xb5de626
        0x4e36ff3c    # 7.6754509E8f
        -0x780b730f
        -0x2d2b0448
        -0x606368dd
        0x6219363
        0x13d7b1d6
        0x138c7553
        -0x68a01c6
        -0x203f24f8
        0x673b4a7f
        0x417901b5
        0x6646a4aa
        0x6a190185
        -0x146178f6
        -0x4abca0ac
        0x39dd8e74
        -0x56fdf83a
    .end array-data
.end method

.method public constructor <init>(Lccsanandroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v0, p0, p1}, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;-><init>(Lccsancom/san/convert/database/removeDownloadListener;Lccsanandroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lccsancom/san/convert/database/removeDownloadListener;->getDownloadingList:Lccsanandroidx/room/EntityInsertionAdapter;

    .line 96
    new-instance v0, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;

    invoke-direct {v0, p0, p1}, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;-><init>(Lccsancom/san/convert/database/removeDownloadListener;Lccsanandroidx/room/RoomDatabase;)V

    .line 189
    new-instance v0, Lccsancom/san/convert/database/removeDownloadListener$unifiedDownload;

    invoke-direct {v0, p0, p1}, Lccsancom/san/convert/database/removeDownloadListener$unifiedDownload;-><init>(Lccsancom/san/convert/database/removeDownloadListener;Lccsanandroidx/room/RoomDatabase;)V

    .line 204
    new-instance v0, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;

    invoke-direct {v0, p0, p1}, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;-><init>(Lccsancom/san/convert/database/removeDownloadListener;Lccsanandroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lccsancom/san/convert/database/removeDownloadListener;->removeDownloadListener:Lccsanandroidx/room/EntityDeletionOrUpdateAdapter;

    .line 302
    new-instance v0, Lccsancom/san/convert/database/removeDownloadListener$addDownloadListener;

    invoke-direct {v0, p0, p1}, Lccsancom/san/convert/database/removeDownloadListener$addDownloadListener;-><init>(Lccsancom/san/convert/database/removeDownloadListener;Lccsanandroidx/room/RoomDatabase;)V

    return-void
.end method

.method private static getDownloadingList([II)Ljava/lang/String;
    .locals 12

    .line 1126
    sget-object v0, Lccsansan/d/getPackageNameByRecord;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1128
    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [C

    .line 1129
    array-length v2, p0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v2, v2, [C

    .line 1130
    sget-object v4, Lccsancom/san/convert/database/removeDownloadListener;->unifiedDownload:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 1132
    const/4 v5, 0x0

    sput v5, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    :goto_0
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    array-length v7, p0

    if-ge v6, v7, :cond_1

    .line 1134
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    aget v6, p0, v6

    const/16 v7, 0x10

    shr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 1135
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    aget v6, p0, v6

    int-to-char v6, v6

    aput-char v6, v1, v3

    .line 1136
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v3

    aget v6, p0, v6

    shr-int/2addr v6, v7

    int-to-char v6, v6

    const/4 v8, 0x2

    aput-char v6, v1, v8

    .line 1137
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v3

    aget v6, p0, v6

    int-to-char v6, v6

    const/4 v9, 0x3

    aput-char v6, v1, v9

    .line 1141
    aget-char v6, v1, v5

    shl-int/2addr v6, v7

    aget-char v10, v1, v3

    add-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1142
    aget-char v6, v1, v8

    shl-int/2addr v6, v7

    aget-char v10, v1, v9

    add-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1145
    invoke-static {v4}, Lccsansan/d/getPackageNameByRecord;->getDownloadingList([I)V

    .line 1148
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    .line 1150
    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    aget v11, v4, v6

    xor-int/2addr v10, v11

    .line 1151
    sput v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    invoke-static {v10}, Lccsansan/d/getPackageNameByRecord;->addDownloadListener(I)I

    move-result v10

    sget v11, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    xor-int/2addr v10, v11

    sput v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1153
    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1154
    sget v11, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    sput v11, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1155
    sput v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1148
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1157
    :cond_0
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1158
    sget v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    sput v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1159
    nop

    .line 1161
    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    aget v10, v4, v7

    xor-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1162
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    const/16 v10, 0x11

    aget v10, v4, v10

    xor-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1165
    new-array v6, v8, [I

    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    aput v10, v6, v5

    sget v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    aput v10, v6, v3

    .line 1167
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    ushr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 1168
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    int-to-char v6, v6

    aput-char v6, v1, v3

    .line 1169
    sget v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    ushr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v8

    .line 1170
    sget v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    int-to-char v6, v6

    aput-char v6, v1, v9

    .line 1173
    invoke-static {v4}, Lccsansan/d/getPackageNameByRecord;->getDownloadingList([I)V

    .line 1176
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    aget-char v7, v1, v5

    aput-char v7, v2, v6

    .line 1177
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v3

    aget-char v7, v1, v3

    aput-char v7, v2, v6

    .line 1178
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v8

    aget-char v7, v1, v8

    aput-char v7, v2, v6

    .line 1179
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v9

    aget-char v7, v1, v9

    aput-char v7, v2, v6

    .line 1132
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v8

    sput v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    goto/16 :goto_0

    .line 1181
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1182
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/util/List;
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/san/convert/database/ConvertIntent;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 271
    nop

    .line 144
    const-string v0, "SELECT * FROM tb_convert"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 145
    iget-object v0, v1, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 146
    iget-object v0, v1, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;ZLccsanandroid/os/CancellationSignal;)Lccsanandroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "task_id"

    .line 148
    invoke-static {v4, v0}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "create_time"

    .line 149
    invoke-static {v4, v5}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "ad_id"

    .line 150
    invoke-static {v4, v6}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "apk_path"

    .line 151
    invoke-static {v4, v7}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "version_code"

    .line 152
    invoke-static {v4, v8}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "portal"

    .line 153
    invoke-static {v4, v9}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "url"

    .line 154
    invoke-static {v4, v10}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "is_apks"

    .line 155
    invoke-static {v4, v11}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "request_network_connected"

    .line 156
    invoke-static {v4, v12}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "last_submit_time"

    .line 157
    invoke-static {v4, v13}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "submit_count"

    .line 158
    invoke-static {v4, v14}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "package_name"

    .line 159
    invoke-static {v4, v15}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "package_title"

    .line 160
    invoke-static {v4, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v1, "package_description"

    .line 161
    invoke-static {v4, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v17, v3

    :try_start_1
    const-string v3, "icon_path"

    .line 162
    invoke-static {v4, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "image_path"

    .line 163
    invoke-static {v4, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "task_state"

    .line 164
    invoke-static {v4, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "trigger_scene"

    .line 165
    invoke-static {v4, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "action"

    .line 166
    invoke-static {v4, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const/16 v3, 0xc

    new-array v3, v3, [I

    const v23, 0x31eb6d67

    const/16 v16, 0x0

    aput v23, v3, v16

    const v24, -0x22aa3f83

    const/16 v25, 0x1

    aput v24, v3, v25

    const v26, 0x6a1166a2

    const/16 v27, 0x2

    aput v26, v3, v27

    const v28, -0x714d9f0b

    const/16 v29, 0x3

    aput v28, v3, v29

    const v30, -0x5481c801

    const/16 v31, 0x4

    aput v30, v3, v31

    const v30, -0x48ab5c88

    const/16 v32, 0x5

    aput v30, v3, v32

    const v30, 0x3edd82bd

    const/16 v33, 0x6

    aput v30, v3, v33

    const v30, 0x4bf2f533    # 3.1844966E7f

    const/16 v34, 0x7

    aput v30, v3, v34

    const v30, 0x5dd32313

    const/16 v35, 0x8

    aput v30, v3, v35

    const v30, 0x631c553a

    const/16 v36, 0x9

    aput v30, v3, v36

    const v30, -0x4b5a5a34

    move/from16 v37, v1

    const/16 v1, 0xa

    aput v30, v3, v1

    const/16 v30, 0xb

    const v38, -0x5f172e3

    aput v38, v3, v30

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v38

    add-int/lit8 v1, v38, 0x15

    invoke-static {v3, v1}, Lccsancom/san/convert/database/removeDownloadListener;->getDownloadingList([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v4, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "activate_failure_count"

    .line 168
    invoke-static {v4, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v39, v1

    move/from16 v38, v3

    const/16 v3, 0xa

    new-array v1, v3, [I

    const/4 v3, 0x0

    aput v23, v1, v3

    aput v24, v1, v25

    aput v26, v1, v27

    aput v28, v1, v29

    const v3, -0x2d19b236

    aput v3, v1, v31

    const v3, -0x24923d6a

    aput v3, v1, v32

    const v3, -0x9b41182

    aput v3, v1, v33

    const v3, 0x4d617f49    # 2.3645096E8f

    aput v3, v1, v34

    const v3, -0x56083b8a

    aput v3, v1, v35

    const v3, -0x1efb6b3f

    aput v3, v1, v36

    const/4 v3, 0x0

    invoke-static {v3, v3}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v40

    rsub-int/lit8 v3, v40, 0x13

    invoke-static {v1, v3}, Lccsancom/san/convert/database/removeDownloadListener;->getDownloadingList([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v4, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0xa

    new-array v3, v3, [I

    const/16 v16, 0x0

    aput v23, v3, v16

    aput v24, v3, v25

    aput v26, v3, v27

    aput v28, v3, v29

    const v23, -0x5dfccc78

    aput v23, v3, v31

    const v23, 0x492e2e6

    aput v23, v3, v32

    const v23, 0x3e6c0104

    aput v23, v3, v33

    const v23, 0x53a500c1

    aput v23, v3, v34

    const v23, -0x4121cd14

    aput v23, v3, v35

    const v23, -0x57df278e

    aput v23, v3, v36

    move/from16 v23, v1

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v1

    int-to-byte v1, v1

    rsub-int/lit8 v1, v1, 0x13

    invoke-static {v3, v1}, Lccsancom/san/convert/database/removeDownloadListener;->getDownloadingList([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v4, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "last_update_time"

    .line 171
    invoke-static {v4, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "activate_action_time"

    .line 172
    invoke-static {v4, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "activate_success_time"

    .line 173
    invoke-static {v4, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v28, v3

    const-string v3, "retry_count"

    .line 174
    invoke-static {v4, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 175
    move/from16 v29, v3

    new-instance v3, Ljava/util/ArrayList;

    move/from16 v30, v1

    invoke-interface {v4}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 271
    nop

    .line 176
    :goto_0
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    new-instance v1, Lccsancom/san/convert/database/ConvertIntent;

    invoke-direct {v1}, Lccsancom/san/convert/database/ConvertIntent;-><init>()V

    .line 180
    move-object/from16 v31, v3

    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {v1, v3}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(Ljava/lang/String;)V

    .line 183
    move/from16 v32, v2

    invoke-interface {v4, v5}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 184
    invoke-virtual {v1, v2, v3}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils(J)V

    .line 186
    invoke-interface {v4, v6}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener(Ljava/lang/String;)V

    .line 189
    invoke-interface {v4, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 192
    invoke-interface {v4, v8}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 193
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload(I)V

    .line 195
    invoke-interface {v4, v9}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList(Ljava/lang/String;)V

    .line 198
    invoke-interface {v4, v10}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload(Ljava/lang/String;)V

    .line 202
    invoke-interface {v4, v11}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 271
    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 202
    goto :goto_2

    :pswitch_0
    const/4 v2, 0x1

    goto :goto_3

    .line 271
    :goto_2
    sget v2, Lccsancom/san/convert/database/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/convert/database/removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    :cond_1
    const/4 v2, 0x0

    .line 204
    :goto_3
    :try_start_2
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList(Z)V

    .line 207
    invoke-interface {v4, v12}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    .line 271
    const/4 v2, 0x0

    goto :goto_4

    :cond_2
    const/4 v2, 0x1

    :goto_4
    packed-switch v2, :pswitch_data_1

    .line 207
    goto :goto_5

    .line 271
    :pswitch_1
    sget v2, Lccsancom/san/convert/database/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v2, v2, 0x31

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/convert/database/removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 207
    :cond_3
    const/4 v2, 0x1

    goto :goto_6

    .line 271
    :goto_5
    const/4 v2, 0x0

    .line 209
    :goto_6
    :try_start_3
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(Z)V

    .line 211
    invoke-interface {v4, v13}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 212
    invoke-virtual {v1, v2, v3}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload(J)V

    .line 214
    invoke-interface {v4, v14}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 215
    invoke-virtual {v1, v2, v3}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener(J)V

    .line 217
    invoke-interface {v4, v15}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl(Ljava/lang/String;)V

    .line 220
    move/from16 v2, v32

    invoke-interface {v4, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-virtual {v1, v3}, Lccsancom/san/convert/database/ConvertIntent;->deleteDownItem(Ljava/lang/String;)V

    .line 223
    move/from16 v32, v0

    move/from16 v3, v37

    invoke-interface {v4, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {v1, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadStatusByUrl(Ljava/lang/String;)V

    .line 226
    move/from16 v0, v18

    move/from16 v18, v2

    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList(Ljava/lang/String;)V

    .line 229
    move/from16 v2, v19

    move/from16 v19, v0

    invoke-interface {v4, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {v1, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingRecordByUrl(Ljava/lang/String;)V

    .line 232
    move/from16 v0, v20

    move/from16 v20, v2

    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount(Ljava/lang/String;)V

    .line 235
    move/from16 v2, v21

    move/from16 v21, v0

    invoke-interface {v4, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {v1, v0}, Lccsancom/san/convert/database/ConvertIntent;->pause(Ljava/lang/String;)V

    .line 238
    move/from16 v0, v22

    move/from16 v22, v2

    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedCount(Ljava/lang/String;)V

    .line 241
    move/from16 v33, v0

    move/from16 v2, v39

    invoke-interface {v4, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 242
    invoke-virtual {v1, v0}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener(I)V

    .line 244
    move/from16 v39, v2

    move/from16 v0, v38

    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 245
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(I)V

    .line 247
    move/from16 v34, v6

    move/from16 v2, v23

    move/from16 v23, v5

    invoke-interface {v4, v2}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 248
    invoke-virtual {v1, v5, v6}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(J)V

    .line 250
    move v6, v2

    move/from16 v37, v3

    move/from16 v5, v30

    invoke-interface {v4, v5}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 251
    invoke-virtual {v1, v2, v3}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList(J)V

    .line 253
    move/from16 v30, v5

    move v3, v6

    move/from16 v2, v24

    invoke-interface {v4, v2}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 254
    invoke-virtual {v1, v5, v6}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl(J)V

    .line 256
    move/from16 v24, v2

    move v6, v3

    move/from16 v5, v26

    invoke-interface {v4, v5}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 257
    invoke-virtual {v1, v2, v3}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadStatusByUrl(J)V

    .line 259
    move/from16 v26, v5

    move v3, v6

    move/from16 v2, v28

    invoke-interface {v4, v2}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 260
    invoke-virtual {v1, v5, v6}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList(J)V

    .line 262
    move/from16 v5, v29

    invoke-interface {v4, v5}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 263
    invoke-virtual {v1, v6}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils(I)V

    .line 264
    move-object/from16 v6, v31

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    move/from16 v38, v0

    move/from16 v28, v2

    move/from16 v29, v5

    move/from16 v2, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v5, v23

    move/from16 v0, v32

    move/from16 v22, v33

    move/from16 v23, v3

    move-object v3, v6

    move/from16 v6, v34

    goto/16 :goto_0

    .line 176
    :cond_4
    move-object v6, v3

    .line 268
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V

    .line 269
    invoke-virtual/range {v17 .. v17}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    return-object v6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v17, v3

    .line 270
    :goto_7
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V

    .line 271
    invoke-virtual/range {v17 .. v17}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)Ljava/util/List;
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/san/convert/database/ConvertIntent;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 142
    sget v2, Lccsancom/san/convert/database/removeDownloadListener;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x67

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/convert/database/removeDownloadListener;->deleteDownItem:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    const-string v4, "SELECT * FROM tb_convert WHERE package_name = ? ORDER BY last_submit_time DESC"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_1

    .line 9
    invoke-static {v4, v6}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    const/4 v4, 0x0

    goto :goto_2

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-static {v4, v5}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 12
    :goto_1
    invoke-virtual {v2, v0}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_3

    .line 9
    :cond_2
    const/4 v4, 0x1

    .line 14
    :goto_2
    invoke-virtual {v2, v4, v0}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 142
    nop

    .line 16
    :goto_3
    iget-object v0, v1, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 17
    iget-object v0, v1, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v2, v6, v4}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;ZLccsanandroid/os/CancellationSignal;)Lccsanandroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "task_id"

    .line 19
    invoke-static {v4, v0}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "create_time"

    .line 20
    invoke-static {v4, v7}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "ad_id"

    .line 21
    invoke-static {v4, v8}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "apk_path"

    .line 22
    invoke-static {v4, v9}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "version_code"

    .line 23
    invoke-static {v4, v10}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "portal"

    .line 24
    invoke-static {v4, v11}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "url"

    .line 25
    invoke-static {v4, v12}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "is_apks"

    .line 26
    invoke-static {v4, v13}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "request_network_connected"

    .line 27
    invoke-static {v4, v14}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "last_submit_time"

    .line 28
    invoke-static {v4, v15}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "submit_count"

    .line 29
    invoke-static {v4, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v5, "package_name"

    .line 30
    invoke-static {v4, v5}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "package_title"

    .line 31
    invoke-static {v4, v6}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v1, "package_description"

    .line 32
    invoke-static {v4, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 p1, v2

    :try_start_1
    const-string v2, "icon_path"

    .line 33
    invoke-static {v4, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "image_path"

    .line 34
    invoke-static {v4, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "task_state"

    .line 35
    invoke-static {v4, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "trigger_scene"

    .line 36
    invoke-static {v4, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "action"

    .line 37
    invoke-static {v4, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const/16 v2, 0xc

    new-array v2, v2, [I

    const v24, 0x31eb6d67

    const/16 v18, 0x0

    aput v24, v2, v18

    const v25, -0x22aa3f83

    const/16 v17, 0x1

    aput v25, v2, v17

    const v26, 0x6a1166a2

    const/16 v16, 0x2

    aput v26, v2, v16

    const v27, -0x714d9f0b

    const/16 v28, 0x3

    aput v27, v2, v28

    const v29, -0x5481c801

    const/16 v30, 0x4

    aput v29, v2, v30

    const v29, -0x48ab5c88

    const/16 v31, 0x5

    aput v29, v2, v31

    const v29, 0x3edd82bd

    const/16 v32, 0x6

    aput v29, v2, v32

    const v29, 0x4bf2f533    # 3.1844966E7f

    const/16 v33, 0x7

    aput v29, v2, v33

    const v29, 0x5dd32313

    const/16 v34, 0x8

    aput v29, v2, v34

    const v29, 0x631c553a

    const/16 v35, 0x9

    aput v29, v2, v35

    const v29, -0x4b5a5a34

    move/from16 v36, v1

    const/16 v1, 0xa

    aput v29, v2, v1

    const/16 v29, 0xb

    const v37, -0x5f172e3

    aput v37, v2, v29

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v37

    add-int/lit8 v1, v37, 0x15

    invoke-static {v2, v1}, Lccsancom/san/convert/database/removeDownloadListener;->getDownloadingList([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v4, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "activate_failure_count"

    .line 39
    invoke-static {v4, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v38, v1

    move/from16 v37, v2

    const/16 v2, 0xa

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput v24, v1, v2

    const/4 v2, 0x1

    aput v25, v1, v2

    const/4 v2, 0x2

    aput v26, v1, v2

    aput v27, v1, v28

    const v2, -0x2d19b236

    aput v2, v1, v30

    const v2, -0x24923d6a

    aput v2, v1, v31

    const v2, -0x9b41182

    aput v2, v1, v32

    const v2, 0x4d617f49    # 2.3645096E8f

    aput v2, v1, v33

    const v2, -0x56083b8a

    aput v2, v1, v34

    const v2, -0x1efb6b3f

    aput v2, v1, v35

    const/4 v2, 0x0

    invoke-static {v2}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result v39

    add-int/lit8 v39, v39, 0x14

    shr-int/lit8 v2, v39, 0x6

    add-int/lit8 v2, v2, 0x13

    invoke-static {v1, v2}, Lccsancom/san/convert/database/removeDownloadListener;->getDownloadingList([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v4, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    new-array v2, v2, [I

    const/16 v18, 0x0

    aput v24, v2, v18

    const/16 v17, 0x1

    aput v25, v2, v17

    const/16 v16, 0x2

    aput v26, v2, v16

    aput v27, v2, v28

    const v24, -0x5dfccc78

    aput v24, v2, v30

    const v24, 0x492e2e6

    aput v24, v2, v31

    const v24, 0x3e6c0104

    aput v24, v2, v32

    const v24, 0x53a500c1

    aput v24, v2, v33

    const v24, -0x4121cd14

    aput v24, v2, v34

    const v24, -0x57df278e

    aput v24, v2, v35

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v28, v24, v26

    move/from16 v24, v1

    add-int/lit8 v1, v28, 0x13

    invoke-static {v2, v1}, Lccsancom/san/convert/database/removeDownloadListener;->getDownloadingList([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v4, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "last_update_time"

    .line 42
    invoke-static {v4, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "activate_action_time"

    .line 43
    invoke-static {v4, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "activate_success_time"

    .line 44
    invoke-static {v4, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "retry_count"

    .line 45
    invoke-static {v4, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 46
    move/from16 v28, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v29, v1

    invoke-interface {v4}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    :goto_4
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 49
    new-instance v1, Lccsancom/san/convert/database/ConvertIntent;

    invoke-direct {v1}, Lccsancom/san/convert/database/ConvertIntent;-><init>()V

    .line 51
    move-object/from16 v30, v2

    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(Ljava/lang/String;)V

    .line 54
    move v2, v5

    move/from16 v31, v6

    invoke-interface {v4, v7}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 55
    invoke-virtual {v1, v5, v6}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils(J)V

    .line 57
    invoke-interface {v4, v8}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual {v1, v5}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener(Ljava/lang/String;)V

    .line 60
    invoke-interface {v4, v9}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-virtual {v1, v5}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 63
    invoke-interface {v4, v10}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 64
    invoke-virtual {v1, v5}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload(I)V

    .line 66
    invoke-interface {v4, v11}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-virtual {v1, v5}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList(Ljava/lang/String;)V

    .line 69
    invoke-interface {v4, v12}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 70
    invoke-virtual {v1, v5}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload(Ljava/lang/String;)V

    .line 73
    invoke-interface {v4, v13}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    const/4 v5, 0x1

    goto :goto_5

    :cond_3
    const/4 v5, 0x0

    .line 75
    :goto_5
    invoke-virtual {v1, v5}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList(Z)V

    .line 78
    invoke-interface {v4, v14}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_4

    .line 9
    const/4 v5, 0x1

    goto :goto_6

    :cond_4
    const/4 v5, 0x0

    :goto_6
    packed-switch v5, :pswitch_data_1

    .line 78
    const/4 v5, 0x0

    goto :goto_7

    :pswitch_1
    const/4 v5, 0x1

    .line 80
    :goto_7
    invoke-virtual {v1, v5}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(Z)V

    .line 82
    invoke-interface {v4, v15}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 83
    invoke-virtual {v1, v5, v6}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload(J)V

    .line 85
    invoke-interface {v4, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 86
    invoke-virtual {v1, v5, v6}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener(J)V

    .line 88
    invoke-interface {v4, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-virtual {v1, v5}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl(Ljava/lang/String;)V

    .line 91
    move/from16 v5, v31

    invoke-interface {v4, v5}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 92
    invoke-virtual {v1, v6}, Lccsancom/san/convert/database/ConvertIntent;->deleteDownItem(Ljava/lang/String;)V

    .line 94
    move/from16 v31, v0

    move/from16 v6, v36

    invoke-interface {v4, v6}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {v1, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadStatusByUrl(Ljava/lang/String;)V

    .line 97
    move/from16 v0, v19

    move/from16 v19, v2

    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList(Ljava/lang/String;)V

    .line 100
    move/from16 v2, v20

    move/from16 v20, v0

    invoke-interface {v4, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v1, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingRecordByUrl(Ljava/lang/String;)V

    .line 103
    move/from16 v0, v21

    move/from16 v21, v2

    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount(Ljava/lang/String;)V

    .line 106
    move/from16 v2, v22

    move/from16 v22, v0

    invoke-interface {v4, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {v1, v0}, Lccsancom/san/convert/database/ConvertIntent;->pause(Ljava/lang/String;)V

    .line 109
    move/from16 v0, v23

    move/from16 v23, v2

    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedCount(Ljava/lang/String;)V

    .line 112
    move/from16 v32, v0

    move/from16 v2, v38

    invoke-interface {v4, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 113
    invoke-virtual {v1, v0}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener(I)V

    .line 115
    move/from16 v38, v2

    move/from16 v0, v37

    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 116
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(I)V

    .line 118
    move/from16 v36, v6

    move/from16 v2, v24

    move/from16 v24, v5

    invoke-interface {v4, v2}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 119
    invoke-virtual {v1, v5, v6}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(J)V

    .line 121
    move v6, v3

    move/from16 v5, v29

    move/from16 v29, v2

    invoke-interface {v4, v5}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 122
    invoke-virtual {v1, v2, v3}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList(J)V

    .line 124
    move v3, v5

    move/from16 v2, v25

    move/from16 v25, v6

    invoke-interface {v4, v2}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 125
    invoke-virtual {v1, v5, v6}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl(J)V

    .line 127
    move v6, v2

    move/from16 v5, v26

    move/from16 v26, v3

    invoke-interface {v4, v5}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 128
    invoke-virtual {v1, v2, v3}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadStatusByUrl(J)V

    .line 130
    move v3, v5

    move/from16 v2, v27

    move/from16 v27, v6

    invoke-interface {v4, v2}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 131
    invoke-virtual {v1, v5, v6}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList(J)V

    .line 133
    move/from16 v5, v28

    invoke-interface {v4, v5}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 134
    invoke-virtual {v1, v6}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils(I)V

    .line 135
    move-object/from16 v6, v30

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    sget v1, Lccsancom/san/convert/database/removeDownloadListener;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x73

    move/from16 v37, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/convert/database/removeDownloadListener;->deleteDownItem:I

    const/4 v0, 0x2

    rem-int/2addr v1, v0

    if-nez v1, :cond_5

    .line 142
    :cond_5
    move/from16 v28, v5

    move/from16 v5, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v0, v31

    move/from16 v23, v32

    move/from16 v40, v27

    move/from16 v27, v2

    move-object v2, v6

    move/from16 v6, v24

    move/from16 v24, v29

    move/from16 v29, v26

    move/from16 v26, v3

    move/from16 v3, v25

    move/from16 v25, v40

    goto/16 :goto_4

    .line 47
    :cond_6
    move-object v6, v2

    .line 139
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V

    .line 140
    invoke-virtual/range {p1 .. p1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    return-object v6

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 p1, v2

    .line 141
    :goto_8
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V

    .line 142
    invoke-virtual/range {p1 .. p1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadingList()Ljava/util/List;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/san/convert/database/ConvertIntent;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 271
    nop

    .line 144
    const-string v0, "SELECT * FROM tb_convert ORDER BY last_submit_time DESC"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 145
    iget-object v0, v1, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 146
    iget-object v0, v1, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;ZLccsanandroid/os/CancellationSignal;)Lccsanandroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "task_id"

    .line 148
    invoke-static {v4, v0}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "create_time"

    .line 149
    invoke-static {v4, v5}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "ad_id"

    .line 150
    invoke-static {v4, v6}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "apk_path"

    .line 151
    invoke-static {v4, v7}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "version_code"

    .line 152
    invoke-static {v4, v8}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "portal"

    .line 153
    invoke-static {v4, v9}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "url"

    .line 154
    invoke-static {v4, v10}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "is_apks"

    .line 155
    invoke-static {v4, v11}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "request_network_connected"

    .line 156
    invoke-static {v4, v12}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "last_submit_time"

    .line 157
    invoke-static {v4, v13}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "submit_count"

    .line 158
    invoke-static {v4, v14}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "package_name"

    .line 159
    invoke-static {v4, v15}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "package_title"

    .line 160
    invoke-static {v4, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v1, "package_description"

    .line 161
    invoke-static {v4, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v17, v3

    :try_start_1
    const-string v3, "icon_path"

    .line 162
    invoke-static {v4, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "image_path"

    .line 163
    invoke-static {v4, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "task_state"

    .line 164
    invoke-static {v4, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "trigger_scene"

    .line 165
    invoke-static {v4, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "action"

    .line 166
    invoke-static {v4, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const/16 v3, 0xc

    new-array v3, v3, [I

    const v23, 0x31eb6d67

    const/16 v16, 0x0

    aput v23, v3, v16

    const v24, -0x22aa3f83

    const/16 v25, 0x1

    aput v24, v3, v25

    const v26, 0x6a1166a2

    const/16 v27, 0x2

    aput v26, v3, v27

    const v28, -0x714d9f0b

    const/16 v29, 0x3

    aput v28, v3, v29

    const v30, -0x5481c801

    const/16 v31, 0x4

    aput v30, v3, v31

    const v30, -0x48ab5c88

    const/16 v32, 0x5

    aput v30, v3, v32

    const v30, 0x3edd82bd

    const/16 v33, 0x6

    aput v30, v3, v33

    const v30, 0x4bf2f533    # 3.1844966E7f

    const/16 v34, 0x7

    aput v30, v3, v34

    const v30, 0x5dd32313

    const/16 v35, 0x8

    aput v30, v3, v35

    const v30, 0x631c553a

    const/16 v36, 0x9

    aput v30, v3, v36

    const v30, -0x4b5a5a34

    move/from16 v37, v1

    const/16 v1, 0xa

    aput v30, v3, v1

    const/16 v30, 0xb

    const v38, -0x5f172e3

    aput v38, v3, v30

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v38

    const-wide/16 v40, 0x0

    cmp-long v30, v38, v40

    rsub-int/lit8 v1, v30, 0x16

    invoke-static {v3, v1}, Lccsancom/san/convert/database/removeDownloadListener;->getDownloadingList([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v4, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "activate_failure_count"

    .line 168
    invoke-static {v4, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v39, v1

    move/from16 v30, v3

    const/16 v3, 0xa

    new-array v1, v3, [I

    const/4 v3, 0x0

    aput v23, v1, v3

    aput v24, v1, v25

    aput v26, v1, v27

    aput v28, v1, v29

    const v3, -0x2d19b236

    aput v3, v1, v31

    const v3, -0x24923d6a

    aput v3, v1, v32

    const v3, -0x9b41182

    aput v3, v1, v33

    const v3, 0x4d617f49    # 2.3645096E8f

    aput v3, v1, v34

    const v3, -0x56083b8a

    aput v3, v1, v35

    const v3, -0x1efb6b3f

    aput v3, v1, v36

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x13

    invoke-static {v1, v3}, Lccsancom/san/convert/database/removeDownloadListener;->getDownloadingList([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v4, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0xa

    new-array v3, v3, [I

    const/16 v16, 0x0

    aput v23, v3, v16

    aput v24, v3, v25

    aput v26, v3, v27

    aput v28, v3, v29

    const v23, -0x5dfccc78

    aput v23, v3, v31

    const v23, 0x492e2e6

    aput v23, v3, v32

    const v23, 0x3e6c0104

    aput v23, v3, v33

    const v23, 0x53a500c1

    aput v23, v3, v34

    const v23, -0x4121cd14

    aput v23, v3, v35

    const v23, -0x57df278e

    aput v23, v3, v36

    move/from16 v23, v1

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    add-int/lit8 v1, v16, 0x14

    invoke-static {v3, v1}, Lccsancom/san/convert/database/removeDownloadListener;->getDownloadingList([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v4, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "last_update_time"

    .line 171
    invoke-static {v4, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v16, v3

    const-string v3, "activate_action_time"

    .line 172
    invoke-static {v4, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "activate_success_time"

    .line 173
    invoke-static {v4, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v28, v3

    const-string v3, "retry_count"

    .line 174
    invoke-static {v4, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 175
    move/from16 v29, v3

    new-instance v3, Ljava/util/ArrayList;

    move/from16 v31, v1

    invoke-interface {v4}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    :goto_0
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    new-instance v1, Lccsancom/san/convert/database/ConvertIntent;

    invoke-direct {v1}, Lccsancom/san/convert/database/ConvertIntent;-><init>()V

    .line 180
    move-object/from16 v32, v3

    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {v1, v3}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(Ljava/lang/String;)V

    .line 183
    move/from16 v33, v2

    invoke-interface {v4, v5}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 184
    invoke-virtual {v1, v2, v3}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils(J)V

    .line 186
    invoke-interface {v4, v6}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener(Ljava/lang/String;)V

    .line 189
    invoke-interface {v4, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 192
    invoke-interface {v4, v8}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 193
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload(I)V

    .line 195
    invoke-interface {v4, v9}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList(Ljava/lang/String;)V

    .line 198
    invoke-interface {v4, v10}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload(Ljava/lang/String;)V

    .line 202
    invoke-interface {v4, v11}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 271
    sget v2, Lccsancom/san/convert/database/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v2, v2, 0x13

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/convert/database/removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/16 v2, 0x47

    goto :goto_1

    :cond_0
    const/16 v2, 0x53

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 202
    const/4 v2, 0x1

    goto :goto_2

    .line 271
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 204
    :goto_2
    :try_start_2
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList(Z)V

    .line 207
    invoke-interface {v4, v12}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    .line 271
    const/16 v2, 0x3b

    goto :goto_3

    :cond_2
    const/16 v2, 0x36

    :goto_3
    packed-switch v2, :pswitch_data_1

    .line 207
    const/4 v2, 0x0

    goto :goto_4

    .line 271
    :pswitch_1
    sget v2, Lccsancom/san/convert/database/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v2, v2, 0x57

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/convert/database/removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 207
    :cond_3
    const/4 v2, 0x1

    .line 209
    :goto_4
    :try_start_3
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(Z)V

    .line 211
    invoke-interface {v4, v13}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 212
    invoke-virtual {v1, v2, v3}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload(J)V

    .line 214
    invoke-interface {v4, v14}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 215
    invoke-virtual {v1, v2, v3}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener(J)V

    .line 217
    invoke-interface {v4, v15}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl(Ljava/lang/String;)V

    .line 220
    move/from16 v2, v33

    invoke-interface {v4, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-virtual {v1, v3}, Lccsancom/san/convert/database/ConvertIntent;->deleteDownItem(Ljava/lang/String;)V

    .line 223
    move/from16 v33, v0

    move/from16 v3, v37

    invoke-interface {v4, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {v1, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadStatusByUrl(Ljava/lang/String;)V

    .line 226
    move/from16 v0, v18

    move/from16 v18, v2

    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList(Ljava/lang/String;)V

    .line 229
    move/from16 v2, v19

    move/from16 v19, v0

    invoke-interface {v4, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {v1, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingRecordByUrl(Ljava/lang/String;)V

    .line 232
    move/from16 v0, v20

    move/from16 v20, v2

    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount(Ljava/lang/String;)V

    .line 235
    move/from16 v2, v21

    move/from16 v21, v0

    invoke-interface {v4, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {v1, v0}, Lccsancom/san/convert/database/ConvertIntent;->pause(Ljava/lang/String;)V

    .line 238
    move/from16 v0, v22

    move/from16 v22, v2

    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedCount(Ljava/lang/String;)V

    .line 241
    move/from16 v34, v0

    move/from16 v2, v39

    invoke-interface {v4, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 242
    invoke-virtual {v1, v0}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener(I)V

    .line 244
    move/from16 v39, v2

    move/from16 v0, v30

    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 245
    invoke-virtual {v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(I)V

    .line 247
    move/from16 v30, v6

    move/from16 v2, v23

    move/from16 v23, v5

    invoke-interface {v4, v2}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 248
    invoke-virtual {v1, v5, v6}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(J)V

    .line 250
    move v6, v2

    move/from16 v37, v3

    move/from16 v5, v31

    invoke-interface {v4, v5}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 251
    invoke-virtual {v1, v2, v3}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList(J)V

    .line 253
    move/from16 v31, v5

    move v3, v6

    move/from16 v2, v16

    invoke-interface {v4, v2}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 254
    invoke-virtual {v1, v5, v6}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl(J)V

    .line 256
    move/from16 v16, v2

    move v6, v3

    move/from16 v5, v26

    invoke-interface {v4, v5}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 257
    invoke-virtual {v1, v2, v3}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadStatusByUrl(J)V

    .line 259
    move/from16 v26, v5

    move v3, v6

    move/from16 v2, v28

    invoke-interface {v4, v2}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 260
    invoke-virtual {v1, v5, v6}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList(J)V

    .line 262
    move/from16 v5, v29

    invoke-interface {v4, v5}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 263
    invoke-virtual {v1, v6}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils(I)V

    .line 264
    move-object/from16 v6, v32

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v28, v2

    move/from16 v29, v5

    move/from16 v2, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v5, v23

    move/from16 v22, v34

    move/from16 v23, v3

    move-object v3, v6

    move/from16 v6, v30

    move/from16 v30, v0

    move/from16 v0, v33

    goto/16 :goto_0

    .line 176
    :cond_4
    move-object v6, v3

    .line 268
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V

    .line 269
    invoke-virtual/range {v17 .. v17}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    return-object v6

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v17, v3

    .line 270
    :goto_5
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V

    .line 271
    invoke-virtual/range {v17 .. v17}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadingList(Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 7
    sget v0, Lccsancom/san/convert/database/removeDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lccsancom/san/convert/database/removeDownloadListener;->getDownloadingList:Lccsanandroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Lccsanandroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {p1}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    iget-object p1, p0, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {p1}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    sget p1, Lccsancom/san/convert/database/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/convert/database/removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p1, 0x50

    :try_start_1
    div-int/2addr p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;)Lccsancom/san/convert/database/ConvertIntent;
    .locals 41

    .line 142
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, ""

    sget v3, Lccsancom/san/convert/database/removeDownloadListener;->addDownloadListener:I

    add-int/lit8 v3, v3, 0x5f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsancom/san/convert/database/removeDownloadListener;->deleteDownItem:I

    const/4 v4, 0x2

    rem-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_0

    .line 9
    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v7, "SELECT * FROM tb_convert WHERE task_id = ?"

    packed-switch v3, :pswitch_data_0

    invoke-static {v7, v6}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v3

    if-nez v0, :cond_2

    goto :goto_2

    .line 142
    :pswitch_0
    nop

    .line 9
    invoke-static {v7, v6}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v3

    if-nez v0, :cond_1

    const/16 v7, 0x3d

    goto :goto_1

    :cond_1
    const/16 v7, 0x4f

    :goto_1
    packed-switch v7, :pswitch_data_1

    goto :goto_4

    :goto_2
    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    packed-switch v7, :pswitch_data_2

    :goto_4
    goto :goto_5

    .line 14
    :pswitch_1
    invoke-virtual {v3, v6, v0}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_6

    .line 12
    :goto_5
    invoke-virtual {v3, v6}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 142
    nop

    .line 16
    :goto_6
    iget-object v0, v1, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 17
    iget-object v0, v1, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    const/4 v7, 0x0

    invoke-static {v0, v3, v5, v7}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;ZLccsanandroid/os/CancellationSignal;)Lccsanandroid/database/Cursor;

    move-result-object v8

    :try_start_0
    const-string v0, "task_id"

    .line 19
    invoke-static {v8, v0}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v9, "create_time"

    .line 20
    invoke-static {v8, v9}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "ad_id"

    .line 21
    invoke-static {v8, v10}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "apk_path"

    .line 22
    invoke-static {v8, v11}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "version_code"

    .line 23
    invoke-static {v8, v12}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "portal"

    .line 24
    invoke-static {v8, v13}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "url"

    .line 25
    invoke-static {v8, v14}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "is_apks"

    .line 26
    invoke-static {v8, v15}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v7, "request_network_connected"

    .line 27
    invoke-static {v8, v7}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v4, "last_submit_time"

    .line 28
    invoke-static {v8, v4}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v6, "submit_count"

    .line 29
    invoke-static {v8, v6}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v5, "package_name"

    .line 30
    invoke-static {v8, v5}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v1, "package_title"

    .line 31
    invoke-static {v8, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v19, v3

    :try_start_1
    const-string v3, "package_description"

    .line 32
    invoke-static {v8, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "icon_path"

    .line 33
    invoke-static {v8, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "image_path"

    .line 34
    invoke-static {v8, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "task_state"

    .line 35
    invoke-static {v8, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "trigger_scene"

    .line 36
    invoke-static {v8, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "action"

    .line 37
    invoke-static {v8, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const/16 v3, 0xc

    new-array v3, v3, [I

    const v26, 0x31eb6d67

    const/16 v18, 0x0

    aput v26, v3, v18

    const v27, -0x22aa3f83

    const/16 v17, 0x1

    aput v27, v3, v17

    const v28, 0x6a1166a2

    const/16 v16, 0x2

    aput v28, v3, v16

    const v29, -0x714d9f0b

    const/16 v30, 0x3

    aput v29, v3, v30

    const v31, -0x5481c801

    const/16 v32, 0x4

    aput v31, v3, v32

    const v31, -0x48ab5c88

    const/16 v33, 0x5

    aput v31, v3, v33

    const v31, 0x3edd82bd

    const/16 v34, 0x6

    aput v31, v3, v34

    const v31, 0x4bf2f533    # 3.1844966E7f

    const/16 v35, 0x7

    aput v31, v3, v35

    const v31, 0x5dd32313

    const/16 v36, 0x8

    aput v31, v3, v36

    const v31, 0x631c553a

    const/16 v37, 0x9

    aput v31, v3, v37

    const v31, -0x4b5a5a34

    move/from16 v38, v1

    const/16 v1, 0xa

    aput v31, v3, v1

    const/16 v31, 0xb

    const v39, -0x5f172e3

    aput v39, v3, v31

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v31

    const/16 v39, 0x0

    cmpl-float v31, v31, v39

    add-int/lit8 v1, v31, 0x14

    invoke-static {v3, v1}, Lccsancom/san/convert/database/removeDownloadListener;->getDownloadingList([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v8, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "activate_failure_count"

    .line 39
    invoke-static {v8, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v40, v1

    move/from16 v31, v3

    const/16 v3, 0xa

    new-array v1, v3, [I

    const/4 v3, 0x0

    aput v26, v1, v3

    const/4 v3, 0x1

    aput v27, v1, v3

    const/4 v3, 0x2

    aput v28, v1, v3

    aput v29, v1, v30

    const v3, -0x2d19b236

    aput v3, v1, v32

    const v3, -0x24923d6a

    aput v3, v1, v33

    const v3, -0x9b41182

    aput v3, v1, v34

    const v3, 0x4d617f49    # 2.3645096E8f

    aput v3, v1, v35

    const v3, -0x56083b8a

    aput v3, v1, v36

    const v3, -0x1efb6b3f

    aput v3, v1, v37

    const/4 v3, 0x0

    invoke-static {v2, v2, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x13

    invoke-static {v1, v2}, Lccsancom/san/convert/database/removeDownloadListener;->getDownloadingList([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v8, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    new-array v2, v2, [I

    const/16 v18, 0x0

    aput v26, v2, v18

    const/4 v3, 0x1

    aput v27, v2, v3

    const/16 v16, 0x2

    aput v28, v2, v16

    aput v29, v2, v30

    const v17, -0x5dfccc78

    aput v17, v2, v32

    const v17, 0x492e2e6

    aput v17, v2, v33

    const v17, 0x3e6c0104

    aput v17, v2, v34

    const v17, 0x53a500c1

    aput v17, v2, v35

    const v17, -0x4121cd14

    aput v17, v2, v36

    const v17, -0x57df278e

    aput v17, v2, v37

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v17

    shr-int/lit8 v17, v17, 0x8

    add-int/lit8 v3, v17, 0x14

    invoke-static {v2, v3}, Lccsancom/san/convert/database/removeDownloadListener;->getDownloadingList([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v8, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "last_update_time"

    .line 42
    invoke-static {v8, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "activate_action_time"

    .line 43
    invoke-static {v8, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    const-string v3, "activate_success_time"

    .line 44
    invoke-static {v8, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v28, v3

    const-string v3, "retry_count"

    .line 45
    invoke-static {v8, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 47
    invoke-interface {v8}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v29

    if-eqz v29, :cond_6

    .line 48
    move/from16 v29, v3

    new-instance v3, Lccsancom/san/convert/database/ConvertIntent;

    invoke-direct {v3}, Lccsancom/san/convert/database/ConvertIntent;-><init>()V

    .line 50
    invoke-interface {v8, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {v3, v0}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(Ljava/lang/String;)V

    .line 53
    move/from16 v30, v1

    invoke-interface {v8, v9}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 54
    invoke-virtual {v3, v0, v1}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils(J)V

    .line 56
    invoke-interface {v8, v10}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {v3, v0}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener(Ljava/lang/String;)V

    .line 59
    invoke-interface {v8, v11}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {v3, v0}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 62
    invoke-interface {v8, v12}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 63
    invoke-virtual {v3, v0}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload(I)V

    .line 65
    invoke-interface {v8, v13}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {v3, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList(Ljava/lang/String;)V

    .line 68
    invoke-interface {v8, v14}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {v3, v0}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload(Ljava/lang/String;)V

    .line 72
    invoke-interface {v8, v15}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 9
    sget v0, Lccsancom/san/convert/database/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/removeDownloadListener;->addDownloadListener:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_7

    :cond_3
    const/4 v0, 0x1

    :goto_7
    packed-switch v0, :pswitch_data_3

    const/4 v0, 0x0

    goto :goto_8

    .line 72
    :pswitch_2
    const/4 v0, 0x1

    .line 142
    :goto_8
    goto :goto_9

    .line 72
    :cond_4
    const/4 v0, 0x0

    .line 74
    :goto_9
    :try_start_2
    invoke-virtual {v3, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList(Z)V

    .line 77
    invoke-interface {v8, v7}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    .line 9
    sget v0, Lccsancom/san/convert/database/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/removeDownloadListener;->addDownloadListener:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v0, 0x1

    goto :goto_a

    .line 142
    :cond_5
    sget v0, Lccsancom/san/convert/database/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/removeDownloadListener;->addDownloadListener:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    .line 79
    const/4 v0, 0x0

    :goto_a
    :try_start_3
    invoke-virtual {v3, v0}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(Z)V

    .line 81
    invoke-interface {v8, v4}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 82
    invoke-virtual {v3, v0, v1}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload(J)V

    .line 84
    invoke-interface {v8, v6}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 85
    invoke-virtual {v3, v0, v1}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener(J)V

    .line 87
    invoke-interface {v8, v5}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {v3, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl(Ljava/lang/String;)V

    .line 90
    move/from16 v0, v38

    invoke-interface {v8, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v3, v0}, Lccsancom/san/convert/database/ConvertIntent;->deleteDownItem(Ljava/lang/String;)V

    .line 93
    move/from16 v0, v20

    invoke-interface {v8, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {v3, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadStatusByUrl(Ljava/lang/String;)V

    .line 96
    move/from16 v0, v21

    invoke-interface {v8, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {v3, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList(Ljava/lang/String;)V

    .line 99
    move/from16 v0, v22

    invoke-interface {v8, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {v3, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingRecordByUrl(Ljava/lang/String;)V

    .line 102
    move/from16 v0, v23

    invoke-interface {v8, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v3, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount(Ljava/lang/String;)V

    .line 105
    move/from16 v0, v24

    invoke-interface {v8, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {v3, v0}, Lccsancom/san/convert/database/ConvertIntent;->pause(Ljava/lang/String;)V

    .line 108
    move/from16 v0, v25

    invoke-interface {v8, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {v3, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedCount(Ljava/lang/String;)V

    .line 111
    move/from16 v0, v40

    invoke-interface {v8, v0}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 112
    invoke-virtual {v3, v0}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener(I)V

    .line 114
    move/from16 v0, v31

    invoke-interface {v8, v0}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 115
    invoke-virtual {v3, v0}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(I)V

    .line 117
    move/from16 v0, v30

    invoke-interface {v8, v0}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 118
    invoke-virtual {v3, v0, v1}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(J)V

    .line 120
    invoke-interface {v8, v2}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 121
    invoke-virtual {v3, v0, v1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList(J)V

    .line 123
    move/from16 v0, v17

    invoke-interface {v8, v0}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 124
    invoke-virtual {v3, v0, v1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl(J)V

    .line 126
    move/from16 v0, v27

    invoke-interface {v8, v0}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 127
    invoke-virtual {v3, v0, v1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadStatusByUrl(J)V

    .line 129
    move/from16 v0, v28

    invoke-interface {v8, v0}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 130
    invoke-virtual {v3, v0, v1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList(J)V

    .line 132
    move/from16 v0, v29

    invoke-interface {v8, v0}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 133
    invoke-virtual {v3, v0}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v7, v3

    goto :goto_b

    :cond_6
    const/4 v7, 0x0

    .line 139
    :goto_b
    invoke-interface {v8}, Lccsanandroid/database/Cursor;->close()V

    .line 140
    invoke-virtual/range {v19 .. v19}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    return-object v7

    :catchall_0
    move-exception v0

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object/from16 v19, v3

    .line 141
    :goto_c
    invoke-interface {v8}, Lccsanandroid/database/Cursor;->close()V

    .line 142
    invoke-virtual/range {v19 .. v19}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 7
    sget v0, Lccsancom/san/convert/database/removeDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/16 v0, 0x4b

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    iget-object v0, p0, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lccsancom/san/convert/database/removeDownloadListener;->removeDownloadListener:Lccsanandroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Lccsanandroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 5
    iget-object p1, p0, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {p1}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    iget-object p1, p0, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {p1}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    goto :goto_2

    .line 4
    :goto_1
    :try_start_1
    iget-object v0, p0, Lccsancom/san/convert/database/removeDownloadListener;->removeDownloadListener:Lccsanandroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Lccsanandroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 5
    iget-object p1, p0, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {p1}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    iget-object p1, p0, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {p1}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    const/4 p1, 0x0

    :try_start_2
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lccsancom/san/convert/database/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x4b
        :pswitch_0
    .end packed-switch
.end method
