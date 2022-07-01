.class Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;
.super Lccsanandroidx/room/RoomOpenHelper$Delegate;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/convert/database/TaskDatabase_Impl;->createOpenHelper(Lccsanandroidx/room/DatabaseConfiguration;)Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingList:I

.field private static removeDownloadListener:[C

.field private static unifiedDownload:J


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/convert/database/TaskDatabase_Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sput v0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->addDownloadListener:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->getDownloadingList:I

    const/16 v1, 0x382

    new-array v2, v1, [C

    const-string v3, "\u0007?\u0006\u00c2\u0004\u00e1\u0002\u00f9\u0000\u0098\u000e\u00a5\u000c\u00d4\n\\\u0008]\u0016r\u0014\u0008\u0012\u001d\u0010L\u001f\u00c9\u001d\u00d2\u001b\u0088\u0019\u00f2\'\u009f%\u00b0#\u00d8!I/x-}+\u001b)\u00087#6\u00a44\u00f82\u00d80\u00a2>\u008b<\u008b:\u00938~FRD]B>@\u0014N\u0014M\u00a8K\u00b4I\u00d0W\u00b0U\u00b9S\u009fQk_K]A[XY0gDe,d\u00c9b\u00f8`\u00e0n\u00e8l\u0092j\u00bfhPv8tbr\u0015p\u0018~$|P{\u00b0y\u00c4\u0087\u00db\u0085\u00be\u0083\u0085\u0081\u0095\u008f|\u008dy\u008bo\u00890\u00971\u0095\u0001\u0094\u00e5\u0092\u00f4\u0090\u0088\u009e\u00f5\u009c\u009e\u009a\u00b0\u0098\u00bd\u00a6K\u00a4e\u00a2f\u00a0h\u00ae\u0012\u00ac?\u00ab\u00d0\u00a9\u00b8\u00b7\u00e2\u00b5\u0095\u00b3\u0098\u00b1\u00a4\u00bf\u00d0\u00bd0\u00bbD\u00b9Y\u00c7(\u00c5?\u00c3\u001d\u00c2\u00ec\u00c0\u00fc\u00ce\u0090\u00cc\u0090\u00ca\u009d\u00c8\u00b4\u00d6T\u00d48\u00d2\u0008\u00d0\\\u00de1\u00dc\u0014\u00da\u0013\u00d9\u00d3\u00e7\u00d0\u00e5\u00d5\u00e3\u00bc\u00e1\u00b4\u00ef\u0090\u00ed$\u00ebL\u00e9i\u00f7\u0018\u00f5\u0000\u00f3D\u00f1\\\u00f0\u00f0\u00fe\u00d2\u00fc\u00dd\u00fa\u00be\u00f8\u0093\u0006\u009d\u0004g\u0002r\u0000o\u000e\'\u000c7\n\u0008\t\u00e5\u0017\u00f4\u0015\u0088\u0013\u00f5\u0011\u009e\u001f\u00b0\u001d\u00bd\u001bK\u0019e\'f%h#\u0012!? \u00d0.\u00b8,\u00e2*\u0095(\u00986\u00a44\u00d0200D>H<#:\u00128\u0000G\u00e9E\u00f0C\u00d0A\u00e4O\u008cM\u00a9KXI@W\u0004U\u001cS0Q\u0011_\n^\u00e0\\\u00c0Z\u0094X\u009cf\u0099d\u00a8bP`4n\u000cl j=h\u001bv#u\u00f1s\u00d4q\u00d3\u007f\u00bf}\u0080{\u00d4yA\u0087R\u0085d\u0083\u0001\u0081\u001f\u008f)\u008e\u00d2\u008c\u00b4\u008a\u00e6\u0088\u00f3\u0096\u0084\u0094\u00c4\u0092\u00b6\u0090Y\u009el\u009cx\u009ad\u0098|\u00a6\u0010\u00a5\u00f6\u00a3\u00fd\u00a1\u00dd\u00af\u00b5\u00ad\u00b1\u00ab\u009b\u00a9\u0088\u00b7O\u00b5J\u00b3]\u00b18\u00bf\u0017\u00bd\u001b\u00bc\u00fa\u00ba\u00f7\u00b8\u00ef\u00c6\u00a7\u00c4\u00b7\u00c2\u0082\u00c0n\u00ceq\u00ccK\u00caH\u00c85\u00d6\u0000\u00d4\u0018\u00d3\u00ac\u00d1\u00e9\u00df\u00fa\u00dd\u009c\u00db\u0099\u00d9\u00b7\u00e7A\u00e5J\u00e3\u000c\u00e1\u000e\u00ef\u001b\u00ed<\u00eb\\\u00ea\u00de\u00e8\u00f1\u00f6\u00f4\u00f4\u0080\u00f2\u00cc\u00f0\u00d4\u00feh\u00fcp\u00faQ\u00f87\u0006,\u00043\u0003\u00f3\u0001\u00e1\u000f\u00ca\r\u00d1\u000b\u00b9\t\u0090\u0017\u00a7\u0015x\u0013I\u0011Y\u001f-\u001d<\u001bP\u001a\u00cd\u0018\u00d6&\u00f8$\u0085\"\u0093 \u00ad.\u00ae,0*j(w6\u00184@2:1\u00dd?\u00d0=\u00fc;\u00e89\u00f8G\u008cEsCaAJOQM9K\u0010I\'H\u00efV\u00cfT\u00c1R\u00a6P\u00a8^\u0090\\$ZQXbf\u0014d\u0011b/`9o\u00c2m\u0084k\u00f6i\u0083w\u00b4u\u00d4sFqI\u007f|}\u0008{tyLx\u00e0\u0086\u00e4\u0084\u00c9\u0082\u00df\u0080\u00bb\u008e\u0085\u008c\u009f\u008ai\u0088\u007f\u0096Z\u0094)\u00921\u0090\u0015\u009f\u00e4\u009d\u00b8\u009b\u00f8\u0099\u0085\u00a7\u008c\u00a5\u00bc\u00a3\u00d0\u00a10\u00afD\u00adH\u00ab-\u00a9\u0003\u00b7\u001f\u00b6\u00e9\u00b4\u00fb\u00b2\u00d5\u00b0\u009b\u00be\u00ac\u00bc\u0085\u00bat\u00b8x\u00c6M\u00c4\\\u00c2p\u00c00\u00ce=\u00cd\u00d4\u00cb\u00f4\u00c9\u0098\u00d7\u00e8\u00d5\u00bc\u00d3\u0080\u00d1e\u00df{\u00ddG\u00db!\u00d93\u00e7\r\u00e5#\u00e4\u00f4\u00e2\u00c1\u00e0\u00cb\u00ee\u00af\u00ec\u0092\u00ea\u009d\u00e8x\u00f6h\u00f4Y\u00f2+\u00f06\u00fe\u000c\u00fd\u00a0\u00fb\u00c0\u00f9\u00ed\u0007\u00e4\u0005\u0084\u0003\u00c8\u0001\u00d8\u000fl\rI\u000bW\t\'\u00172\u0015/\u0014\u00f4\u0012\u00f9\u0010\u00d8\u001e\u00a8\u001c\u00b4\u001a\u00c8\u0018\u00a8&U$|\"l `.@,\u0014+\u00e1)\u00f17\u00d15\u00a33\u00bd1\u00b3?p=u;\\9TG0EDC,B\u00c9@\u00f8N\u00e0L\u00e4J\u00fcH\u0090VpTyR_P+^\u000b\\\u001bZ\u0008Y\u00f1g\u00d0e\u00ddc\u00aca\u00c0o\u00a0mMkDidwhuxs\u000cr\u00f4p\u00e6~\u00c1|\u00dbz\u00b7x\u0081\u0086\u008a\u0084S\u0082S\u0080W\u008e-\u008c2\u008a\u0015\u0089\u00e4\u0097\u00b8\u0095\u00f8\u0093\u0085\u0091\u008c\u009f\u00bc\u009d\u00d0\u009b0\u0099D\u00a7Y\u00a5/\u00a3\u0014\u00a1\u001d\u00a0\u00e7\u00ae\u00f2\u00ac\u00d0\u00aa\u00e4\u00a8\u008c\u00b6\u00a9\u00b4X\u00b2@\u00b0\u0004\u00be\u001c\u00bc0\u00ba\r\u00b8\u0016\u00c7\u00ff\u00c5\u00d4\u00c3\u00d5\u00c1\u00a4\u00cf\u00b0\u00cd\u00af\u00cbb\u00c9y\u00d7E\u00d5,\u00d3!\u00d1\u001a\u00df\u0019\u00de\u00cf\u00dc\u00c7\u00da\u00d7\u00d8\u00b9\u00e6\u008e\u00e4\u0080\u00e2h\u00e0<\u00eey\u00ec\n\u00ea\u000c\u00e8)\u00f7\u00c7\u00f5\u00d1\u00f3\u00fa\u00f1\u009c\u00ff\u009e\u00fd\u00ab\u00fb\u00ac\u00f9,\u0007n\u0005a\u0003\u0004\u0001\u0010\u000f\\\u000e\u00a4\u000c\u00f8\n\u00cd\u0008\u00a3\u0016\u00a0\u0014\u0081\u0012\u008a\u0010q\u001eP\u001c]\u001a\u0013\u0018\u0006&\u0015%\u00e1#\u00f0!\u00c5/\u00b6-\u00bd+\u00b3)c7{5]3R1$?\u0004=X<\u00c5:\u00ee8\u00e0F\u008dD\u009bB\u00b5@VN8LbJ\u000fH\u0000VHT2S\u00c5Q\u00e8_\u00f4]\u00e0[\u00c0Y\u0094gaercCa0o9m\u0000l\u00ecj\u00cbh\u00c9v\u00dft\u00a4r\u008dp\u0097~b|\u007fz@x!\u00861\u0084\u0015\u0083\u00e4\u0081\u00b8\u008f\u00e5\u008d\u008e\u008b\u0080\u0089\u00ad\u0097\u00bb\u0095U\u0093v\u0091\u0018\u009f\u0002\u009d/\u009b \u009a\u00a8\u0098\u00d2\u00a6\u00e5\u00a4\u0088\u00a2\u0094\u00a0\u00c0\u00ae \u00act\u00aaA\u00a8R\u00b6#\u00b4\u0010\u00b2\u0019\u00b1\u00e0\u00bf\u00cc\u00bd\u00eb\u00bb\u00bb\u00b9\u00a9\u00c7\u0093\u00c5g\u00c3}\u00c1_\u00cf3\u00cd\u000b\u00cb\u001c\u00c9\u0015\u00c8\u00fd\u00d6\u00c1\u00d4\u00d8\u00d2\u00ec\u00d0\u00a9\u00de\u00ba\u00dc\\\u00daY\u00d8w\u00e6\u0001\u00e4\n\u00e2L\u00e1\u00ce\u00ef\u00db\u00ed\u00fc\u00eb\u009c\u00e9\u009e\u00f7\u00b1\u00f5\u00b4\u00f3@\u00f1\u000c\u00ff\u0014\u00fd(\u00fb0\u00f9\u0011\u00f8\u00f7\u0006\u00ec\u0004\u00f3\u0002\u00b5\u0000\u00a4\u000e\u008c\u000c\u009d\nd\u0008A\u0016g\u00148\u0012\t\u0010\u0019\u001f\u00ed\u001d\u00fc\u001b\u0090\u0019\u008d\'\u0096%\u00b8#E!S/m-n+p)*776\u00d84\u00802\u00fa0\u009d>\u0090<\u00bc:(88FLD!B7@\u001cN\u0015M\u00e6K\u00c5I\u00ccW\u00a9U\u00bfS\u0095Qk_h]Y[+Y6g3f\u00f4d\u00fdb\u00c5`\u00d9n\u00b0l\u00c4j\u00b1hBvttqr\u000fp\u0019~\"}\u00a4{\u00d6y\u00e3\u0087\u0094\u0085\u00f4\u0083\u00a6\u0081\u00a9\u008f\\\u008dh\u008b\u0014\u0089l\u0097\u0000\u0095\u0015\u0094\u00eb\u0092\u00e8\u0090\u00d9\u009e\u00b2\u009c\u00b9\u009a\u0098\u0098e\u00a6K\u00a4[\u00a2I\u00a03\u00ae\u0007\u00ac\u001d\u00ab\u00ff\u00a9\u00d3\u00b7\u00eb\u00b5\u00bc\u00b3\u00b5\u00b1\u009d\u00bfa\u00bdx\u00bb\u000c\u00b9\t\u00c7\u001a\u00c5<\u00c39\u00c2\u00d7\u00c0\u00e1\u00ce\u00ea\u00cc\u00ec\u00ca\u00ae\u00c8\u00bb\u00d6\\\u00d4<\u00d2~\u00d0\u0011\u00de\u0014\u00dc \u00db\u00ac\u00d9\u00b4\u00e7\u00c8\u00e5\u00ce\u00e3\u00b5\u00e1\u0090\u00ef\u008a\u00edu\u00eb\u007f\u00e9W\u00f7\'\u00f5)\u00f3\u001e\u00f2\u00f0\u00f0\u00f8\u00fe\u008c\u00fc\u0089\u00fa\u009a\u00f8\u00bc\u0006\u00b9\u0004W\u0002a\u0000j\u000el\u000c.\n;\t\u00dc\u0017\u00bc\u0015\u00fe\u0013\u0091\u0011\u0094\u001f\u00a0\u001d,\u001b4\u0019x\'n%\u0019#)!9 \u00de.\u00f9,\u0094*\u0083(\u00996\u00a94,2x0X>!<\':\u00038#G\u00f9E\u00c0C\u00d8A\u00e5O\u00c9\u0000i\u0001\u0082\u0003\u00ab\u0005\u00b0\u0007\u00d1\t\u00f0\u000b\u00e4\r+\u000f\u0006\u0011-\u0013Q\u0015H\u0017e\u0018\u008e\u001a\u008d\u001c\u008b\u001e\u00a3 \u00c3\"\u00ed$\u00ea&\u0004\u0000i\u0001\u0082\u0003\u00ab\u0005\u00b0\u0007\u00d1\t\u00f0\u000b\u00e4\r+\u000f\u0001\u0011/\u0013L\u0015M\u0017\u007f\u0018\u0092\u001a\u00b7\u001c\u00a0\u001e\u00a9 \u00c1\"\u00fd\u0000i\u0001\u0082\u0003\u00ab\u0005\u00b0\u0007\u00d1\t\u00f0\u000b\u00e4\r+\u000f\u0013\u00119\u0013[\u0015G\u0017u\u0018\u008f\u001a\u009b\u001c\u008b\u001e\u00b4 \u00c5\"\u00f5$\u00e1"

    const-string v4, "ISO-8859-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    sput-object v2, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->removeDownloadListener:[C

    const-wide v0, -0x352e3cdae7aefe14L    # -2.658263887950708E52

    sput-wide v0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->unifiedDownload:J

    return-void
.end method

.method constructor <init>(Lccsancom/san/convert/database/TaskDatabase_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/convert/database/TaskDatabase_Impl;

    invoke-direct {p0, p2}, Lccsanandroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method

.method private static IncentiveDownloadUtils(ICI)Ljava/lang/String;
    .locals 9

    .line 1099
    sget-object v0, Lccsansan/d/getThumbPathByRecord;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    new-array v1, p2, [C

    .line 1105
    const/4 v2, 0x0

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    :goto_0
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    if-ge v2, p2, :cond_0

    .line 1107
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    sget-object v3, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->removeDownloadListener:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->unifiedDownload:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p1

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    .line 1105
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1113
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1114
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public createAllTables(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 4

    .line 3
    sget v0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v1

    rsub-int v1, v1, 0x77c

    int-to-char v1, v1

    const/16 v2, 0x30

    const-string v3, ""

    invoke-static {v3, v2}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    rsub-int v2, v2, 0x345

    invoke-static {v0, v1, v2}, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 1
    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'ffc81caa0ff9c1cc8d4aab30b67e153c\')"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget p1, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x21

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public dropAllTables(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 5

    .line 4
    sget v0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->getDownloadingList:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    const-string v0, "DROP TABLE IF EXISTS `tb_convert`"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/convert/database/TaskDatabase_Impl;

    invoke-static {v0}, Lccsancom/san/convert/database/TaskDatabase_Impl;->removeDownloadListener(Lccsancom/san/convert/database/TaskDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    const/16 v0, 0x4e

    goto :goto_0

    :cond_1
    const/16 v0, 0x11

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    goto :goto_4

    .line 2
    :pswitch_0
    nop

    .line 3
    iget-object v0, p0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/convert/database/TaskDatabase_Impl;

    invoke-static {v0}, Lccsancom/san/convert/database/TaskDatabase_Impl;->unifiedDownload(Lccsancom/san/convert/database/TaskDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_2

    .line 4
    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    packed-switch v3, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    sget v3, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->addDownloadListener:I

    add-int/lit8 v3, v3, 0x2f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    :cond_3
    iget-object v3, p0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/convert/database/TaskDatabase_Impl;

    invoke-static {v3}, Lccsancom/san/convert/database/TaskDatabase_Impl;->getDownloadingList(Lccsancom/san/convert/database/TaskDatabase_Impl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/room/RoomDatabase$Callback;

    invoke-virtual {v3, p1}, Lccsanandroidx/room/RoomDatabase$Callback;->onDestructiveMigration(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 6

    .line 3
    sget v0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    const/16 v0, 0x24

    goto :goto_0

    :cond_0
    const/16 v0, 0x60

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/convert/database/TaskDatabase_Impl;

    invoke-static {v0}, Lccsancom/san/convert/database/TaskDatabase_Impl;->IncentiveDownloadUtils(Lccsancom/san/convert/database/TaskDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/convert/database/TaskDatabase_Impl;

    invoke-static {v0}, Lccsancom/san/convert/database/TaskDatabase_Impl;->IncentiveDownloadUtils(Lccsancom/san/convert/database/TaskDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    :pswitch_1
    goto :goto_3

    .line 3
    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_6

    .line 2
    :goto_3
    iget-object v0, p0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/convert/database/TaskDatabase_Impl;

    invoke-static {v0}, Lccsancom/san/convert/database/TaskDatabase_Impl;->addDownloadListener(Lccsancom/san/convert/database/TaskDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_2

    .line 1
    const/4 v4, 0x1

    goto :goto_5

    :cond_2
    const/4 v4, 0x0

    :goto_5
    packed-switch v4, :pswitch_data_2

    goto :goto_6

    :pswitch_2
    sget v4, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->getDownloadingList:I

    add-int/lit8 v4, v4, 0x19

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 3
    :cond_3
    iget-object v4, p0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/convert/database/TaskDatabase_Impl;

    invoke-static {v4}, Lccsancom/san/convert/database/TaskDatabase_Impl;->getDownloadStatusByUrl(Lccsancom/san/convert/database/TaskDatabase_Impl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroidx/room/RoomDatabase$Callback;

    invoke-virtual {v4, p1}, Lccsanandroidx/room/RoomDatabase$Callback;->onCreate(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public onOpen(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 4

    .line 5
    nop

    .line 1
    iget-object v0, p0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/convert/database/TaskDatabase_Impl;

    invoke-static {v0, p1}, Lccsancom/san/convert/database/TaskDatabase_Impl;->addDownloadListener(Lccsancom/san/convert/database/TaskDatabase_Impl;Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 2
    iget-object v0, p0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/convert/database/TaskDatabase_Impl;

    invoke-static {v0, p1}, Lccsancom/san/convert/database/TaskDatabase_Impl;->IncentiveDownloadUtils(Lccsancom/san/convert/database/TaskDatabase_Impl;Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 3
    iget-object v0, p0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/convert/database/TaskDatabase_Impl;

    invoke-static {v0}, Lccsancom/san/convert/database/TaskDatabase_Impl;->deleteDownItem(Lccsancom/san/convert/database/TaskDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    sget v0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->getDownloadingList:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 3
    :cond_0
    nop

    .line 4
    iget-object v0, p0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/convert/database/TaskDatabase_Impl;

    invoke-static {v0}, Lccsancom/san/convert/database/TaskDatabase_Impl;->getDownloadedRecordByUrl(Lccsancom/san/convert/database/TaskDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    sget v1, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    .line 4
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v3, p0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/convert/database/TaskDatabase_Impl;

    invoke-static {v3}, Lccsancom/san/convert/database/TaskDatabase_Impl;->getDownloadingRecordByUrl(Lccsancom/san/convert/database/TaskDatabase_Impl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/room/RoomDatabase$Callback;

    invoke-virtual {v3, p1}, Lccsanandroidx/room/RoomDatabase$Callback;->onOpen(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    sget p1, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    const/16 p1, 0x45

    goto :goto_3

    :cond_3
    const/16 p1, 0xa

    :goto_3
    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x45
        :pswitch_1
    .end packed-switch
.end method

.method public onPostMigrate(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    sget p1, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public onPreMigrate(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 1
    sget v0, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/16 v0, 0x23

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1}, Lccsanandroidx/room/util/DBUtil;->dropFtsSyncTriggers(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    sget p1, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->addDownloadListener:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    return-void

    :goto_1
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method protected onValidateSchema(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)Lccsanandroidx/room/RoomOpenHelper$ValidationResult;
    .locals 48

    .line 38
    nop

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v3, "task_id"

    const-string v4, "TEXT"

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "task_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v4, "create_time"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "create_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const/4 v6, 0x0

    const-string v4, "ad_id"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "ad_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v4, "apk_path"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "apk_path"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const/4 v6, 0x1

    const-string v4, "version_code"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "version_code"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const/4 v6, 0x0

    const-string v4, "portal"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "portal"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v4, "url"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const/4 v6, 0x1

    const-string v4, "is_apks"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "is_apks"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v4, "request_network_connected"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "request_network_connected"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v4, "last_submit_time"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "last_submit_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v4, "submit_count"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "submit_count"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const/4 v6, 0x0

    const-string v4, "package_name"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v4, "package_title"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "package_title"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v4, "package_description"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "package_description"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v4, "icon_path"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "icon_path"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v4, "image_path"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "image_path"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v4, "task_state"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "task_state"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v4, "trigger_scene"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "trigger_scene"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v4, "action"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string v10, "tb_convert"

    const-string v11, ""

    const-string v6, "INTEGER"

    const-string v15, "activate_failure_count"

    const-string v16, "INTEGER"

    const-string v14, "activate_failure_count"

    const-string v21, "INTEGER"

    const-string v24, "INTEGER"

    const-string v29, "last_update_time"

    const-string v30, "INTEGER"

    const-string v9, "last_update_time"

    const-string v32, "activate_action_time"

    const-string v33, "INTEGER"

    const-string v8, "activate_action_time"

    const-string v38, "activate_success_time"

    const-string v39, "INTEGER"

    const-string v7, "activate_success_time"

    const-string v41, "retry_count"

    const-string v42, "INTEGER"

    const-string v13, "retry_count"

    cmp-long v12, v2, v4

    add-int/lit16 v12, v12, 0x345

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v17, v2, v4

    const/4 v2, 0x1

    rsub-int/lit8 v3, v17, 0x1

    int-to-char v2, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x15

    invoke-static {v12, v2, v3}, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v3, v1

    move-object v5, v6

    move v6, v2

    move-object v2, v7

    move v7, v12

    move-object v12, v8

    move-object/from16 v8, v17

    move-object/from16 v47, v10

    move-object v10, v9

    move/from16 v9, v18

    invoke-direct/range {v3 .. v9}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit16 v3, v3, 0x346

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-char v4, v4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    rsub-int/lit8 v5, v5, 0x15

    invoke-static {v3, v4, v5}, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v3, v14

    move-object v14, v1

    invoke-direct/range {v14 .. v20}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const/16 v3, 0x30

    invoke-static {v11, v3}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    rsub-int v3, v3, 0x35a

    const/16 v4, 0x30

    invoke-static {v4}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    int-to-char v4, v4

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    rsub-int/lit8 v5, v9, 0x14

    invoke-static {v3, v4, v5}, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v18

    const/4 v3, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v17, v1

    move-object/from16 v19, v21

    move/from16 v21, v3

    invoke-direct/range {v17 .. v23}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const/4 v3, 0x0

    invoke-static {v3}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    rsub-int v4, v4, 0x35b

    invoke-static {v3}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    int-to-char v5, v5

    invoke-static {v3}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x14

    invoke-static {v4, v5, v6}, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    add-int/lit16 v7, v7, 0x36d

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-static {v11, v3, v4, v4}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    int-to-char v3, v3

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    rsub-int/lit8 v4, v6, 0x15

    invoke-static {v7, v3, v4}, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v28}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const/4 v3, 0x0

    invoke-static {v3, v3, v3}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    rsub-int v3, v4, 0x36e

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    const/4 v4, 0x1

    rsub-int/lit8 v5, v8, 0x1

    int-to-char v4, v5

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0x14

    invoke-static {v3, v4, v5}, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v31, 0x1

    move-object/from16 v25, v1

    move-object/from16 v26, v29

    move-object/from16 v27, v30

    move/from16 v29, v3

    move-object/from16 v30, v4

    invoke-direct/range {v25 .. v31}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const/16 v34, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    move-object/from16 v31, v1

    invoke-direct/range {v31 .. v37}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const/16 v40, 0x1

    move-object/from16 v34, v1

    move-object/from16 v35, v38

    move-object/from16 v36, v39

    move/from16 v38, v3

    move-object/from16 v39, v4

    invoke-direct/range {v34 .. v40}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const/16 v43, 0x1

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x1

    move-object/from16 v40, v1

    invoke-direct/range {v40 .. v46}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 30
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 31
    new-instance v2, Lccsanandroidx/room/util/TableInfo;

    move-object/from16 v4, v47

    invoke-direct {v2, v4, v0, v1, v3}, Lccsanandroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 32
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lccsanandroidx/room/util/TableInfo;->read(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Lccsanandroidx/room/util/TableInfo;

    move-result-object v0

    .line 33
    invoke-virtual {v2, v0}, Lccsanandroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lccsanandroidx/room/RoomOpenHelper$ValidationResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tb_convert(com.san.convert.database.ConvertIntent).\n Expected:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Found:\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lccsanandroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v1

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 38
    new-instance v0, Lccsanandroidx/room/RoomOpenHelper$ValidationResult;

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1}, Lccsanandroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    sget v4, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->addDownloadListener:I

    add-int/lit8 v4, v4, 0x1b

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_0
    packed-switch v12, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
