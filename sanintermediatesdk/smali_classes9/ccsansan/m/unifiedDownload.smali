.class public Lccsansan/m/unifiedDownload;
.super Lccsanandroid/database/sqlite/SQLiteOpenHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:[C

.field private static addDownloadListener:Lccsansan/m/unifiedDownload;

.field private static deleteDownItem:I

.field private static getDownloadingList:J

.field private static getDownloadingRecordByUrl:I


# instance fields
.field private removeDownloadListener:Lccsansan/m/deleteDownItem;

.field private unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sput v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    const/4 v1, 0x1

    sput v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    const/16 v1, 0x372

    new-array v2, v1, [C

    const-string v3, "\u0000C\u00aa\u0087U\u00ef\u0000>\u00ab\u0000Vl\u0000\u00de\u00ab\u0087V\u00e9\u0001?\u00ac\u001eWb\u0001\u00dc\u00ac\u0098W\u00e0\u0002[\u00ad\u001eXj\u0002\u00ae\u00ad\u00efX\u00e1\u0003!\u00ae\u0007Yp\u0003\u00ac\u00ae\u009eY\u0082\u0004\u0016\u00af(ZH\u0004\u0098\u00af\u00adZ\u00cf\u0005U\u00b0b[v\u0005\u0090\u00b0\u00e9[\u00ca\u00066\u00b1\u0010\\I\u0006\u00de\u00b1\u00e7\\\u00ec\u0007\u001a\u00b2!];\u0007\u00a4\u00b2\u0080]\u00c2\u0008;\u00b3h^9\u0008\u009a\u00b3\u00aa^\u00ec\t\u0001\u00b4\'_7\t\u00b8\u00b4\u0084_\u00ce\n?\u00b5l`5\n\u008e\u00b5\u00da`\u00e7\u000b\n\u00b6Laz\u000b\u0098\u00b6\u00c9a\u00fb\u000c\u0008\u00b7Rb1\u000c\u00b2\u00b7\u00feb\u00c8\r1\u00b8\u0016c/\r\u008d\u00b8\u00dac\u00e1\u000e\r\u00b9gd}\u000e\u0083\u00b9\u00c3d\u00e4\u000fA\u00babeN\u000f\u00b8\u00ba\u00e1e\u00a6\u0010\u007f\u00bb]fd\u0010\u00bf\u00bb\u00d4f\u00ed\u0011\u0002\u00bcBgf\u0011\u00a8\u00bc\u00d9g\u00a6\u0012\u000f\u00bduh]\u0012\u008e\u00bd\u0083h\u00a4\u0013-\u00beGiw\u0013\u00b4\u00be\u00c8i\u00f1\u0014w\u00bfxjD\u0014\u008e\u00bf\u00ffj\u00ac\u0015u\u00c0Ij\u0093\u0015\u00bd\u00c0\u00cak\u0015\u0016\u000c\u00c1[k\u0089\u0016\u00b3\u00c1\u00d3l\t\u0017\"\u00c2\u0006l\u00b2\u0017\u009e\u00c2\u00f1m?\u0018\u0008\u00c3am\u00ab\u0018\u00e2\u00c3\u0083n\u0011\u0019#\u00c4Qn\u0083\u0019\u00ad\u00c4\u00cdo\u001a\u001a\u0014\u00c5So\u0081\u001a\u00ab\u00c5\u00ebp\u0001\u001b:\u00c6>p\u00ba\u001b\u0086\u00c6\u00c9q7\u001c\u0000\u00c7Yq\u00a3\u001c\u00ea\u00c7\u00bbr\u0003\u001d-\u00c8ur\u0098\u001d\u009b\u00c8\u00eds\u001d\u001ec\u00c9Ts\u00a2\u001e\u008c\u00c9\u00d0t@\u001fa\u00ca\u007ft\u0085\u001f\u00b3\u00ca\u00e1u\u000b S\u00cbxu\u00b6 \u00ca\u00cb\u00e0vH!q\u00cc]v\u00a9!\u00fb\u00cc\u00bdwF\"X\u00cd|w\u008c\"\u00d9\u00cd\u00e4x;#M\u00ce}x\u00c3#\u00f4\u00ce\u00c2y,$p\u00cf y\u00c1$\u00c5\u00cf\u00fez\u0010%E\u00d0fz\u00ba%\u00d9\u00d0\u00ec{0&G\u00d1W{\u00a9&\u00c1\u00d1\u00a7|\u0010\'~\u00d2H|\u009c\'\u009c\u00d2\u00a5}9(C\u00d3m}\u00ba(\u00c5\u00d3\u00dc~-)_\u00d4n~\u00a4)\u008c\u00d4\u00d5\u007f\u0013*s\u00d5T\u007f\u00f9*\u008a\u00d5\u001a\u00802+O\u00d5\u009b\u0080\u00b0+\u00dc\u00d6\"\u0081\',U\u00d6\u0090\u0081\u00a2,\u0086\u00d7/\u0082\u0015-}\u00d7\u00ae\u0082\u00e3-\u0084\u00d8\u000b\u0083+.E\u00d8\u009d\u0083\u00bf.\u00d0\u00d9\u0012\u0084>/\u0001\u00d9\u00a2\u0084\u008e/\u00f8\u00da!\u0085f0?\u00da\u0091\u0085\u00b10\u00ea\u00db\u0001\u0086)1=\u00db\u00a6\u0086\u00821\u00c4\u00dc%\u0087f27\u00dc\u0094\u0087\u00aa2\u00ed\u00dd\u0001\u0088(3v\u00dd\u008f\u0088\u00a73\u00c7\u00de\u0019\u0089147\u00de\u00a0\u0089\u008e4\u00d8\u00df,\u008a`59\u00df\u009a\u008a\u00d35\u00f5\u00e0\n\u008b[6~\u00e0\u008d\u008b\u00d36\u00e6\u00e18\u008cU7u\u00e1\u00c6\u008c\u00ef7\u00d5\u00e2=\u008dn8/\u00e2\u00c8\u008d\u00c98\u00e7\u00e3\u0007\u008e\u00189Y\u00e3\u00a7\u008e\u00ef9\u00d8\u00e4A\u008f\u001a:h\u00e4\u0092\u008f\u00d0:\u00eb\u00e5+\u0090];\u007f\u00e5\u00bb\u0090\u00ec;\u00e1\u00e69\u0091\u0012<S\u00e6\u0099\u0091\u00e9<\u00d2\u00e7{\u0092\u001c=c\u00e7\u00b5\u0092\u00dd=\u00e9\u00e88\u0093Z>\\\u00e8\u00b1\u0093\u00c9>\u00a2\u00e9\u0003\u0094i?Y\u00e9\u0082\u0094\u008b?\u00ac\u00ea4\u0095N?\u00a0\u00ea\u00ba\u0095\u00cc@\n\u00ebs\u0096|@\u00b8\u00eb\u008a\u0096\u00f3A\\\u00ec}\u0097UA\u0094\u00ec\u00a5\u0097\u00d7B\u0019\u00ed*\u0098{B\u008d\u00ed\u00b7\u0098\u00d3C\u001d\u00eem\u0099vC\u00b2\u00ee\u0094\u0099\u00f5DV\u00efg\u009aDD\u009a\u00ef\u00bd\u009a\u00f1E+\u00f0 \u009bzE\u00d3\u00f0\u009c\u009b\u00d8F*\u00f1\u0013\u009c<F\u00dd\u00f1\u00a2\u009c\u00f2G\u0014\u00f2e\u009dNG\u00aa\u00f2\u009c\u009d\u00cdHN\u00f3o\u009e{H\u009d\u00f3\u00ab\u009e\u00e7I\r\u00f43\u009fwI\u0086\u00f4\u00e0\u009f\u00c1J/\u00f5g\u00a0@J\u00c9\u00f5\u0092\u00a0\u00c3K:\u00f6t\u00a1_K\u00a6\u00f6\u00ee\u00a1\u00c8LF\u00f7p\u00a2UL\u00bc\u00f7\u009a\u00a2\u00a7M\r\u00f8]\u00a3\"M\u0093\u00f8\u00d3\u00a3\u00eaNK\u00f9\u001e\u0002(\u00a8\u00ecW\u0084\u0002U\u00a9kT\u0007\u0002\u00b5\u00a9\u00ecT\u0082\u0003T\u00aeuU\t\u0003\u00b7\u00ae\u00f3U\u008b\u00000\u00afuZ\u0001\u0000\u00c5\u00af\u0084Z\u008a\u0001J\u00acl[\u001b\u0001\u00c7\u00ac\u00f5[\u00e9\u0006\u007f\u00adWX#\u0006\u00c2\u00ad\u00d2X\u00ae\u0007n\u00b2NY\u0006\u0007\u00eb\u00b2\u0082Y\u00dd\u0004G\u00b3J^\u0012\u0004\u00b9\u00b3\u00e5^\u00b9\u0005N\u00b0h_7\u0005\u00de\u00b0\u00fc_\u00d1\nT\u00b1}\\;\n\u00c8\u00b1\u00e9\\\u00a1\u000b_\u00b6\t]7\u000b\u00c2\u00b6\u00f3]\u00dd\u0008A\u00b7~b*\u0008\u00ce\u00b7\u009db\u00b1\tA\u00b4\u0007c=\t\u00ce\u00b4\u0093c\u00b7\u000eX\u00b5{`\n\u000e\u00e6\u00b5\u00b7`\u00b5\u000fo\u00ba<a\u0001\u000f\u00af\u00ba\u0086a\u00a0\u000cP\u00bb\u0007fJ\u000c\u00a9\u00bb\u00b2f\u0086\rg\u00b88g@\r\u00df\u00b8\u009bg\u00b9\u0012`\u00b9sdB\u0012\u00c5\u00b9\u00b7d\u0091\u0013B\u00be8e\u0000\u0013\u0097\u00be\u0093e\u00a3\u0010d\u00bf\u001ej)\u0010\u00f4\u00bf\u0096j\u00c3\u0011\u0012\u00bc!k\u0007\u0011\u00c4\u00bc\u00a8k\u0085\u0016S\u00bd&h\u000e\u0016\u00e8\u00bd\u00b2h\u0087\u0017\u001e\u00c2\u0015h\u00d1\u0017\u00e7\u00c2\u0096i9\u0014\u0018\u00c35i\u00f3\u0014\u00cb\u00c3\u00bfn~\u0015U\u00c0#n\u00de\u0015\u00da\u00c0\u00a3ot\u001a\u0004\u00c1\u001bo\u00d7\u001a\u00fd\u00c1\u009cl?\u001b\u0006\u00c6?l\u00f9\u001b\u00d5\u00c6\u00b9mt\u0018O\u00c7%m\u00dd\u0018\u00ce\u00c7\u0090rz\u0019\u0002\u00c4<r\u00d6\u0019\u00f7\u00c4\u00b3s^\u001ei\u00c5%s\u00b6\u001e\u008d\u00c5\u0083po\u001fO\u00ca\u0005p\u00f1\u001f\u00dc\u00ca\u00d2qL\u001cf\u00cb\'q\u00c3\u001c\u00ee\u00cb\u00b9vU\u001d\u0006\u00c8]v\u00f4\u001d\u00d9\u00c8\u009fwb\"?\u00c9 w\u00f7\"\u00a7\u00c9\u0094tp#v\u00ce-t\u00c9#\u008f\u00ce\u00aeu! p\u00cf\tu\u00eb \u00a1\u00cf\u008bz}!&\u00cc:z\u00fc!\u00ba\u00cc\u008b{l&|\u00cd+{\u00c5&\u0093\u00cd\u00a7x\'\'~\u00d2\u0007x\u00dd\'\u00b3\u00d2\u0087yf$1\u00d3\u0019y\u00d3$\u00f9\u00d3\u00a0~x%\u0014\u00d0*~\u009c%\u00fb\u00d0\u009a\u007fC*%\u00d1\u000c\u007f\u00d9*\u0091\u00d1\u0081|^+#\u00d6I|\u00f0+\u0088\u00d6\u00a4}z(l\u00d7K}\u00ca(\u00b3\u00d7u\u0082\\))\u00d7\u00c6\u0082\u00cc)\u00a2\u00d4b\u0083L.?\u00d4\u00b7\u0083\u00f3.\u0083\u00d5D\u0080~/\t\u00d5\u00d4\u0080\u00f6/\u00e3\u00da2\u0081L,%\u00da\u00c6\u0081\u00d4,\u00a5\u00dbo\u0086\u0007-\u001e\u00db\u00d8\u0086\u00f8-\u009f\u00d82\u0087\u00012\u001d\u00d8\u00f2\u0087\u00d22\u00a1\u00d9j\u0084B3\u0015\u00d9\u00f2\u0084\u00ff3\u0083\u00de{\u0085Y0\u0005\u00de\u00e8\u0085\u008e0\u00b8\u00dfJ\u008a{17\u00df\u00c2\u008a\u00ed1\u00a1\u00dc*\u008b\t6\u001d\u00dc\u00f2\u008b\u00de6\u0092\u00ddS\u0088_7\u001f\u00dd\u00f3\u0088\u00a07\u00df\u00e2K\u0089\u001b4,\u00e2\u00c6\u0089\u00914\u00bc\u00e3^\u008e{5Z\u00e3\u00e9\u008e\u00bf5\u008c\u00e0`\u008f=:\u000b\u00e0\u00ee\u008f\u00b6:\u00ac\u00e1l\u008cs;2\u00e1\u00cc\u008c\u0084;\u00b3\u00e6&\u008d}8\u0010\u00e6\u00e4\u008d\u00ac8\u0095\u00e7U\u0092391\u00e7\u00c1\u0092\u00aa9\u00c3\u00e4b\u0093\u001c>4\u00e4\u00e3\u0093\u00f6>\u00cd\u00e5Q\u0090??\'\u00e5\u00d5\u0090\u00e4?\u00bb\u00eaw\u0091\u001d<<\u00ea\u009f\u0091\u00e6<\u008c\u00ebD\u00963=\u0018\u00eb\u00dc\u0096\u00e0=\u00bf\u00e8{\u0097\u0019=\u00c0\u00e8\u0093\u0097\u00e2Bf\u00e9M\u0094!B\u00c6\u00e9\u00d6\u0094\u00beCc\u00ee[\u0095!C\u00b0\u00ee\u00ef\u0095\u008b@I\u00efp\u009ao@\u00bb"

    const-string v4, "ISO-8859-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    sput-object v2, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils:[C

    const-wide v0, -0x2beaabdb5341552bL    # -1.1389448456545765E97

    sput-wide v0, Lccsansan/m/unifiedDownload;->getDownloadingList:J

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "mads_cpi.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lccsansan/m/unifiedDownload;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 3
    new-instance p1, Lccsansan/m/deleteDownItem;

    invoke-direct {p1}, Lccsansan/m/deleteDownItem;-><init>()V

    iput-object p1, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/m/unifiedDownload;)Lccsansan/m/deleteDownItem;
    .locals 2

    .line 1
    sget v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/m/unifiedDownload;Lccsansan/m/getDownloadedList;Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)Z
    .locals 2

    .line 1
    sget v0, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lccsansan/m/unifiedDownload;->removeDownloadListener(Lccsansan/m/getDownloadedList;Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)Z

    move-result p0

    sget p1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    return p0
.end method

.method public static declared-synchronized addDownloadListener()V
    .locals 5

    const-class v0, Lccsansan/m/unifiedDownload;

    monitor-enter v0

    .line 59
    :try_start_0
    sget v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v2, v1, 0xd

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 58
    :cond_0
    sget-object v2, Lccsansan/m/unifiedDownload;->addDownloadListener:Lccsansan/m/unifiedDownload;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 59
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    packed-switch v4, :pswitch_data_0

    :goto_1
    goto :goto_4

    :pswitch_0
    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/16 v1, 0x12

    goto :goto_2

    :cond_2
    const/16 v1, 0x5a

    :goto_2
    packed-switch v1, :pswitch_data_1

    invoke-virtual {v2}, Lccsansan/m/unifiedDownload;->close()V

    goto :goto_3

    :pswitch_1
    invoke-virtual {v2}, Lccsansan/m/unifiedDownload;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :goto_3
    const/16 v1, 0x5b

    :try_start_1
    div-int/2addr v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    monitor-exit v0

    return-void

    .line 57
    :catchall_1
    move-exception v1

    monitor-exit v0

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_1
    .end packed-switch
.end method

.method private addDownloadListener(Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)V
    .locals 2

    .line 41
    sget v0, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x44

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/16 v0, 0x3f

    goto :goto_0

    :cond_0
    const/16 v0, 0x51

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    .line 0
    :cond_1
    if-eqz p1, :cond_2

    .line 41
    const/16 v0, 0x11

    goto :goto_1

    :cond_2
    const/16 v0, 0x33

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_0
    goto :goto_3

    :goto_2
    :pswitch_1
    invoke-interface {p1}, Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList()V

    :goto_3
    sget p1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_4

    :cond_3
    const/4 p1, 0x0

    :goto_4
    packed-switch p1, :pswitch_data_2

    return-void

    :pswitch_2
    const/16 p1, 0x62

    :try_start_1
    div-int/2addr p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private addDownloadListener(Lccsansan/m/getDownloadedList;Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)Z
    .locals 3

    .line 40
    sget v0, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    if-nez p1, :cond_1

    .line 40
    const/16 v0, 0x44

    goto :goto_0

    :cond_1
    const/16 v0, 0x35

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 31
    :try_start_0
    invoke-direct {p0, p2}, Lccsansan/m/unifiedDownload;->addDownloadListener(Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)V

    goto :goto_1

    .line 34
    :pswitch_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 35
    iget-object v2, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    invoke-virtual {v2, v0, p1}, Lccsansan/m/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/database/sqlite/SQLiteDatabase;Lccsansan/m/getDownloadedList;)Z

    move-result p1

    .line 36
    invoke-direct {p0, p2}, Lccsansan/m/unifiedDownload;->addDownloadListener(Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return p1

    .line 36
    :catch_0
    move-exception p1

    goto :goto_3

    .line 40
    :goto_1
    sget p1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    :goto_2
    packed-switch p1, :pswitch_data_1

    return v1

    :pswitch_1
    const/16 p1, 0x4d

    :try_start_1
    div-int/2addr p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :catchall_0
    move-exception p1

    throw p1

    :goto_3
    invoke-direct {p0, p2}, Lccsansan/m/unifiedDownload;->addDownloadListener(Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Lccsansan/m/unifiedDownload;Ljava/lang/String;)Z
    .locals 2

    .line 3
    sget v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsansan/m/unifiedDownload;->getDownloadStatusByUrl(Ljava/lang/String;)Z

    move-result p0

    sget p1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/16 p1, 0x58

    goto :goto_0

    :cond_1
    const/16 p1, 0x16

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return p0

    :goto_1
    const/16 p1, 0x5c

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadStatusByUrl(Ljava/lang/String;)Z
    .locals 3

    .line 5
    sget v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x2e

    goto :goto_0

    :cond_0
    const/16 v0, 0x54

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    invoke-virtual {v2, v0, p1}, Lccsansan/m/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x36

    :try_start_1
    div-int/2addr v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    :catch_0
    move-exception p1

    goto :goto_3

    :goto_1
    :try_start_2
    iget-object v2, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    invoke-virtual {v2, v0, p1}, Lccsansan/m/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sget v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    return p1

    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;
    .locals 2

    .line 4
    sget-object v0, Lccsansan/m/unifiedDownload;->addDownloadListener:Lccsansan/m/unifiedDownload;

    if-nez v0, :cond_1

    .line 5
    const-class v0, Lccsansan/m/unifiedDownload;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lccsansan/m/unifiedDownload;->addDownloadListener:Lccsansan/m/unifiedDownload;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lccsansan/m/unifiedDownload;

    invoke-direct {v1, p0}, Lccsansan/m/unifiedDownload;-><init>(Lccsanandroid/content/Context;)V

    sput-object v1, Lccsansan/m/unifiedDownload;->addDownloadListener:Lccsansan/m/unifiedDownload;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 11
    :cond_1
    :goto_0
    sget-object p0, Lccsansan/m/unifiedDownload;->addDownloadListener:Lccsansan/m/unifiedDownload;

    return-object p0
.end method

.method private static removeDownloadListener(ICI)Ljava/lang/String;
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

    sget-object v3, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsansan/m/unifiedDownload;->getDownloadingList:J

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

.method private removeDownloadListener(Lccsansan/m/getDownloadedList;Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)Z
    .locals 3

    .line 21
    nop

    .line 7
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p1, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    const/16 v1, 0x61

    goto :goto_0

    :cond_0
    const/16 v1, 0x35

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 11
    sget-object v1, Lccsansan/m/getDownloadedList;->unifiedDownload:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 21
    :pswitch_0
    sget v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 8
    :cond_1
    :try_start_1
    sget-object v1, Lccsansan/m/getDownloadedList;->unifiedDownload:Ljava/util/Map;

    iget-object v2, p1, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    const/16 v1, 0x1a

    goto :goto_1

    :cond_2
    const/16 v1, 0x12

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 9
    sget-object v1, Lccsansan/m/getDownloadedList;->unifiedDownload:Ljava/util/Map;

    iget-object v2, p1, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 11
    :goto_2
    iget-object v2, p1, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_3

    .line 12
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    :goto_3
    packed-switch v1, :pswitch_data_2

    :pswitch_1
    goto :goto_6

    .line 21
    :pswitch_2
    sget v1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    .line 12
    :try_start_2
    sget-object v1, Lccsansan/m/getDownloadedList;->unifiedDownload:Ljava/util/Map;

    iget-object v2, p1, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v1, 0x2c

    :try_start_3
    div-int/2addr v1, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 21
    :catchall_0
    move-exception p1

    throw p1

    .line 12
    :cond_4
    :try_start_4
    sget-object v1, Lccsansan/m/getDownloadedList;->unifiedDownload:Ljava/util/Map;

    iget-object v2, p1, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 21
    :goto_4
    nop

    .line 9
    :goto_5
    nop

    .line 21
    sget v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    .line 15
    :goto_6
    :try_start_5
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 16
    iget-object v2, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    invoke-virtual {v2, v1, p1}, Lccsansan/m/deleteDownItem;->unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;Lccsansan/m/getDownloadedList;)Z

    move-result p1

    .line 17
    invoke-direct {p0, p2}, Lccsansan/m/unifiedDownload;->addDownloadListener(Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 21
    return p1

    .line 17
    :catch_0
    move-exception p1

    .line 21
    invoke-direct {p0, p2}, Lccsansan/m/unifiedDownload;->addDownloadListener(Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsansan/m/unifiedDownload;Lccsansan/m/getDownloadedList;Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)Z
    .locals 3

    .line 2
    sget v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    const/16 v1, 0x15

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1b

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lccsansan/m/unifiedDownload;->addDownloadListener(Lccsansan/m/getDownloadedList;Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)Z

    move-result p0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x50

    :try_start_0
    div-int/2addr p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_2

    :cond_1
    const/4 p1, 0x1

    :goto_2
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return p0

    :goto_3
    const/16 p1, 0x38

    :try_start_1
    div-int/2addr p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p0

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/m/getDownloadStatusByUrl;",
            ">;"
        }
    .end annotation

    .line 32
    nop

    .line 24
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 25
    iget-object v2, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lccsansan/m/deleteDownItem;->unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 28
    const/16 v4, 0x30

    goto :goto_1

    :cond_1
    const/16 v4, 0x24

    :goto_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    .line 31
    invoke-virtual {p0, v2}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 32
    :pswitch_1
    sget v4, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v4, v4, 0x69

    rem-int/lit16 v7, v4, 0x80

    sput v7, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    .line 28
    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    const-wide/32 v7, 0x240c8400

    packed-switch v4, :pswitch_data_1

    .line 27
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    .line 32
    :pswitch_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsansan/m/getDownloadStatusByUrl;

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v4}, Lccsansan/m/getDownloadStatusByUrl;->addDownloadListener()J

    move-result-wide v11

    xor-long/2addr v9, v11

    cmp-long v11, v9, v7

    if-lez v11, :cond_3

    const/4 v5, 0x0

    :cond_3
    packed-switch v5, :pswitch_data_2

    goto :goto_4

    .line 27
    :goto_3
    check-cast v4, Lccsansan/m/getDownloadStatusByUrl;

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4}, Lccsansan/m/getDownloadStatusByUrl;->addDownloadListener()J

    move-result-wide v9

    sub-long/2addr v5, v9

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    .line 29
    :goto_4
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :goto_5
    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 28
    sget v2, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x5f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    goto :goto_6

    :cond_4
    const/4 v5, 0x0

    :goto_6
    packed-switch v5, :pswitch_data_3

    goto :goto_7

    .line 32
    :pswitch_3
    return-object v1

    .line 28
    :goto_7
    :try_start_2
    array-length v0, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    .line 32
    :catch_0
    move-exception v1

    return-object v0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 2

    .line 50
    sget v0, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 42
    :cond_0
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 43
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/m/unifiedDownload$unifiedDownload;

    invoke-direct {v1, p0, p1}, Lccsansan/m/unifiedDownload$unifiedDownload;-><init>(Lccsansan/m/unifiedDownload;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-direct {p0, p1}, Lccsansan/m/unifiedDownload;->getDownloadStatusByUrl(Ljava/lang/String;)Z

    :goto_0
    sget p1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v7, Lccsansan/m/unifiedDownload$addDownloadListener;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lccsansan/m/unifiedDownload$addDownloadListener;-><init>(Lccsansan/m/unifiedDownload;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    monitor-exit p0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V
    .locals 2

    .line 6
    sget v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsansan/m/getDownloadedList;Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)V

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    sget p1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/m/getDownloadStatusByUrl;",
            ">;)Z"
        }
    .end annotation

    .line 52
    nop

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    const/16 v1, 0x3e

    goto :goto_1

    :cond_1
    const/16 v1, 0x26

    :goto_1
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 52
    sget v1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    goto :goto_6

    .line 39
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lccsansan/m/unifiedDownload;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 40
    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 52
    :goto_2
    nop

    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 43
    iget-object v1, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lccsansan/m/unifiedDownload;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, v3}, Lccsansan/m/deleteDownItem;->IncentiveDownloadUtils(ILccsanandroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    sget v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 45
    :cond_2
    :try_start_2
    iget-object p1, p0, Lccsansan/m/unifiedDownload;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    :try_start_3
    iget-object p1, p0, Lccsansan/m/unifiedDownload;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 50
    :catch_0
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 52
    :try_start_5
    iget-object p1, p0, Lccsansan/m/unifiedDownload;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 49
    :goto_3
    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_5

    .line 52
    :goto_4
    iget-object v0, p0, Lccsansan/m/unifiedDownload;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p1

    :goto_5
    nop

    .line 35
    sget p1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    .line 52
    return v2

    .line 35
    :goto_6
    const/16 v1, 0x62

    goto :goto_7

    :cond_3
    const/4 v1, 0x7

    :goto_7
    packed-switch v1, :pswitch_data_1

    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/m/getDownloadStatusByUrl;

    .line 35
    invoke-virtual {v1}, Lccsansan/m/getDownloadStatusByUrl;->unifiedDownload()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 34
    :pswitch_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/m/getDownloadStatusByUrl;

    .line 35
    invoke-virtual {v1}, Lccsansan/m/getDownloadStatusByUrl;->unifiedDownload()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :goto_8
    const/16 v1, 0xf

    :try_start_6
    div-int/2addr v1, v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 52
    :goto_9
    sget v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_1
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(Lccsansan/m/getDownloadStatusByUrl;)Z
    .locals 3

    .line 52
    sget v0, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 52
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 0
    return v0

    .line 51
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    invoke-virtual {v2, v1, p1}, Lccsansan/m/deleteDownItem;->getDownloadingList(Lccsanandroid/database/sqlite/SQLiteDatabase;Lccsansan/m/getDownloadStatusByUrl;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    return p1

    :catch_0
    move-exception p1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized IncentiveDownloadUtils(Lccsansan/m/removeDownloadListener;)Z
    .locals 3

    monitor-enter p0

    .line 13
    :try_start_0
    sget v0, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v1, v0, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 0
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 13
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 12
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 13
    iget-object v2, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    invoke-virtual {v2, v0, p1}, Lccsansan/m/deleteDownItem;->unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;Lccsansan/m/removeDownloadListener;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    :goto_1
    monitor-exit p0

    return v1

    :goto_2
    add-int/lit8 p1, v0, 0x61

    :try_start_2
    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    :cond_2
    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    const/16 p1, 0x3a

    goto :goto_3

    :cond_3
    const/16 p1, 0x20

    :goto_3
    packed-switch p1, :pswitch_data_1

    monitor-exit p0

    return v1

    :pswitch_1
    const/16 p1, 0x5d

    :try_start_3
    div-int/2addr p1, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 11
    :catchall_1
    move-exception p1

    monitor-exit p0

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
    .packed-switch 0x3a
        :pswitch_1
    .end packed-switch
.end method

.method public addDownloadListener(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lccsansan/m/getDownloadingCount;",
            ">;"
        }
    .end annotation

    .line 57
    nop

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 57
    const/16 v2, 0x30

    goto :goto_1

    :cond_0
    const/16 v2, 0x31

    :goto_1
    packed-switch v2, :pswitch_data_0

    sget v2, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0xb

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 56
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 57
    iget-object v3, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    invoke-virtual {v3, v1, v2}, Lccsansan/m/deleteDownItem;->getDownloadedRecordByUrl(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget v2, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x3b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_1

    :pswitch_0
    goto :goto_0

    :catch_0
    move-exception p1

    :pswitch_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;
    .locals 4

    monitor-enter p0

    .line 4
    :try_start_0
    sget v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    const/16 v0, 0x3b

    goto :goto_0

    :cond_0
    const/16 v0, 0x25

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :catchall_0
    move-exception p1

    :goto_1
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 0
    :cond_1
    if-nez p1, :cond_2

    .line 4
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    nop

    :goto_2
    packed-switch v1, :pswitch_data_1

    :goto_3
    goto :goto_5

    .line 3
    :pswitch_0
    :try_start_3
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    invoke-virtual {v1, v0, p1}, Lccsansan/m/deleteDownItem;->getDownloadingList(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    :cond_3
    :goto_4
    monitor-exit p0

    return-object v3

    :goto_5
    :try_start_4
    sget p1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, p1, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    :cond_4
    add-int/lit8 p1, p1, 0x21

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez p1, :cond_3

    const/16 p1, 0x30

    :try_start_5
    div-int/2addr p1, v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 2
    :catchall_2
    move-exception p1

    monitor-exit p0

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener(Lccsansan/m/getDownloadedList;)V
    .locals 2

    .line 30
    sget v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lccsansan/m/unifiedDownload;->unifiedDownload(Lccsansan/m/getDownloadedList;Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)V

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 7
    :try_start_0
    sget v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 1
    :cond_0
    :try_start_1
    invoke-super {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 2
    iget-object v0, p0, Lccsansan/m/unifiedDownload;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    .line 7
    const/16 v1, 0x16

    goto :goto_0

    :cond_1
    const/16 v1, 0x3b

    :goto_0
    packed-switch v1, :pswitch_data_0

    :try_start_2
    sget v1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_2

    :try_start_3
    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v1, 0x4

    :try_start_4
    div-int/lit8 v1, v1, 0x0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_4

    :pswitch_0
    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2
    :cond_2
    :try_start_6
    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    const/16 v0, 0xd

    goto :goto_1

    :cond_3
    const/16 v0, 0xf

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    .line 3
    :goto_2
    iget-object v0, p0, Lccsansan/m/unifiedDownload;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lccsansan/m/unifiedDownload;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 7
    goto :goto_3

    .line 4
    :catch_0
    move-exception v0

    :try_start_7
    const-string v1, "CPIDatabase"

    .line 7
    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_4
    :goto_3
    :pswitch_1
    monitor-exit p0

    return-void

    .line 0
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/m/getDownloadedList;",
            ">;"
        }
    .end annotation

    .line 8
    sget v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    invoke-virtual {v2, v0}, Lccsansan/m/deleteDownItem;->addDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x47

    :try_start_1
    div-int/2addr v2, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 8
    :catchall_0
    move-exception v0

    throw v0

    .line 5
    :catch_0
    move-exception v0

    goto :goto_4

    :goto_1
    :try_start_2
    iget-object v1, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    invoke-virtual {v1, v0}, Lccsansan/m/deleteDownItem;->addDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 8
    :goto_2
    sget v1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 5
    const/16 v1, 0x2c

    goto :goto_3

    :cond_1
    const/16 v1, 0x4b

    :goto_3
    packed-switch v1, :pswitch_data_1

    .line 8
    return-object v0

    :pswitch_1
    const/4 v1, 0x0

    :try_start_3
    array-length v1, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    throw v0

    :goto_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized getDownloadingList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/m/removeDownloadListener;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    sget v0, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v1, v0, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    const/16 v1, 0x5b

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 0
    :pswitch_0
    if-nez p1, :cond_1

    .line 2
    const/16 v1, 0x44

    goto :goto_1

    :cond_1
    const/16 v1, 0x41

    :goto_1
    packed-switch v1, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :goto_2
    :try_start_1
    array-length v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_2

    const/16 v1, 0xf

    goto :goto_3

    :cond_2
    const/16 v1, 0x38

    :goto_3
    packed-switch v1, :pswitch_data_2

    goto :goto_7

    :goto_4
    add-int/lit8 v0, v0, 0x65

    :try_start_2
    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_3

    :try_start_3
    array-length p1, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    :goto_5
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_3
    :goto_6
    monitor-exit p0

    return-object v2

    .line 1
    :goto_7
    :pswitch_2
    :try_start_5
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    invoke-virtual {v1, v0, p1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_6

    :catchall_1
    move-exception p1

    goto :goto_5

    .line 0
    :catchall_2
    move-exception p1

    monitor-exit p0

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;
    .locals 2

    .line 23
    sget v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 22
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    invoke-virtual {v1, v0, p1, p2}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget p2, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 p2, p2, 0x77

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 p2, p2, 0x2

    return-object p1

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDownloadingList(Lccsansan/m/getDownloadedList;Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)V
    .locals 2

    .line 17
    sget v0, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 9
    :cond_0
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 10
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/m/unifiedDownload$getDownloadingList;

    invoke-direct {v1, p0, p1, p2}, Lccsansan/m/unifiedDownload$getDownloadingList;-><init>(Lccsansan/m/unifiedDownload;Lccsansan/m/getDownloadedList;Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-direct {p0, p1, p2}, Lccsansan/m/unifiedDownload;->removeDownloadListener(Lccsansan/m/getDownloadedList;Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)Z

    sget p1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x21

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    :cond_2
    :goto_0
    sget p1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public declared-synchronized getDownloadingList(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 7

    monitor-enter p0

    .line 22
    :try_start_0
    sget v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 21
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 22
    iget-object v1, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget p2, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 p2, p2, 0x27

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p2, p2, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p2, :cond_1

    :cond_1
    :goto_0
    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 27
    :try_start_0
    sget v0, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 23
    const/16 v0, 0x2c

    goto :goto_0

    :cond_0
    const/16 v0, 0x5c

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :try_start_1
    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_1

    :pswitch_0
    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    :pswitch_1
    goto :goto_3

    :goto_1
    const/4 v2, 0x0

    :try_start_2
    array-length v2, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_5

    .line 27
    :goto_3
    :try_start_3
    sget p1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p1, :cond_2

    :cond_2
    :goto_4
    monitor-exit p0

    return v1

    .line 26
    :cond_3
    :goto_5
    :try_start_4
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 27
    iget-object v2, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    invoke-virtual {v2, v0, p1, p2, p3}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception p1

    goto :goto_4

    .line 22
    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .line 3
    nop

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, ""

    const/16 v3, 0x30

    invoke-static {v2, v3, v1, v1}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    rsub-int/lit8 v3, v7, 0x1

    int-to-char v3, v3

    invoke-static {v1}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    shr-int/lit8 v4, v4, 0x6

    rsub-int v4, v4, 0x1dc

    invoke-static {v2, v3, v4}, Lccsansan/m/unifiedDownload;->removeDownloadListener(ICI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2
    sget-object v2, Lccsansan/m/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3
    invoke-static {v1}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    shr-int/lit8 v2, v2, 0x6

    add-int/lit16 v2, v2, 0x1dc

    invoke-static {v1}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x26b

    int-to-char v3, v3

    invoke-static {v1}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    add-int/lit16 v4, v4, 0x197

    invoke-static {v2, v3, v4}, Lccsansan/m/unifiedDownload;->removeDownloadListener(ICI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget p1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_0
    :goto_0
    sget p1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_1
    array-length p1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onUpgrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 4
    sget p3, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, p3, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto :goto_0

    :cond_0
    const/16 v0, 0x33

    :goto_0
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    if-gt p2, v1, :cond_1

    goto :goto_1

    .line 0
    :pswitch_0
    if-gt p2, v1, :cond_3

    goto :goto_2

    .line 4
    :cond_1
    const/16 v1, 0x35

    :goto_1
    packed-switch v1, :pswitch_data_1

    :goto_2
    add-int/lit8 p3, p3, 0x79

    rem-int/lit16 p2, p3, 0x80

    sput p2, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_2

    .line 1
    :cond_2
    const-string p2, "alter table adinfo add title TEXT"

    invoke-virtual {p1, p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2
    const-string p2, "alter table adinfo add description TEXT"

    invoke-virtual {p1, p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3
    const-string p2, "alter table adinfo add icon_path TEXT"

    invoke-virtual {p1, p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    const-string p2, "alter table adinfo add image_path TEXT"

    invoke-virtual {p1, p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    :pswitch_1
    sget p1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x2d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x35
        :pswitch_1
    .end packed-switch
.end method

.method public removeDownloadListener()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/m/getDownloadedList;",
            ">;"
        }
    .end annotation

    .line 18
    sget v0, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 15
    const/16 v0, 0x4e

    goto :goto_0

    :cond_0
    const/16 v0, 0x3d

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 15
    iget-object v2, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    invoke-virtual {v2, v0}, Lccsansan/m/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :goto_1
    iget-object v2, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    invoke-virtual {v2, v0}, Lccsansan/m/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    array-length v2, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :goto_2
    sget v2, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v2, v2, 0x73

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 15
    const/4 v2, 0x0

    goto :goto_3

    :cond_1
    const/4 v2, 0x1

    :goto_3
    packed-switch v2, :pswitch_data_1

    .line 18
    return-object v0

    :pswitch_1
    :try_start_2
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    :goto_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;
    .locals 3

    .line 3
    sget v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v0, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 0
    :cond_0
    if-nez p1, :cond_1

    .line 3
    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/16 v1, 0x39

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 0
    goto :goto_1

    .line 2
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    invoke-virtual {v1, v0, p1}, Lccsansan/m/deleteDownItem;->addDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    return-object v2

    :goto_1
    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized removeDownloadListener(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 7

    monitor-enter p0

    .line 2
    :try_start_0
    sget v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    const/16 v0, 0x39

    goto :goto_0

    :cond_0
    const/16 v0, 0x3d

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2
    iget-object v1, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lccsansan/m/deleteDownItem;->unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p2, 0x0

    :try_start_2
    invoke-super {p2}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception p1

    goto :goto_4

    :goto_1
    :try_start_4
    iget-object v0, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lccsansan/m/deleteDownItem;->unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    sget p2, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 p2, p2, 0x37

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p2, p2, 0x2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez p2, :cond_1

    :cond_1
    :goto_3
    monitor-exit p0

    return p1

    :goto_4
    const/4 p1, 0x0

    goto :goto_3

    .line 0
    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    .line 20
    sget v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 14
    :cond_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 20
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 14
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    :pswitch_0
    return v1

    .line 19
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    move-object v11, p0

    :try_start_1
    iget-object v2, v11, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lccsansan/m/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget v1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v11, p0

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(Ljava/lang/String;)Lccsansan/m/getDownloadedList;
    .locals 2

    .line 2
    sget v0, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    invoke-virtual {v1, v0, p1}, Lccsansan/m/deleteDownItem;->deleteDownItem(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;
    .locals 3

    monitor-enter p0

    .line 29
    :try_start_0
    sget v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    const/16 v0, 0x42

    goto :goto_0

    :cond_0
    const/16 v0, 0x39

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 0
    if-nez p1, :cond_1

    goto :goto_2

    .line 29
    :pswitch_0
    :try_start_1
    array-length v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    goto :goto_4

    :catchall_0
    move-exception p1

    :goto_1
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    const/16 v0, 0xf

    goto :goto_3

    :cond_1
    const/16 v0, 0x5e

    :goto_3
    packed-switch v0, :pswitch_data_1

    :goto_4
    goto :goto_5

    .line 28
    :cond_2
    :pswitch_1
    :try_start_3
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/m/unifiedDownload;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 29
    iget-object v2, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    invoke-virtual {v2, v0, p1, p2}, Lccsansan/m/deleteDownItem;->addDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget p2, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 p2, p2, 0x57

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 p2, p2, 0x2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p2, :cond_3

    :try_start_5
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    monitor-exit p0

    return-object v1

    .line 0
    :goto_5
    monitor-exit p0

    return-object v1

    .line 27
    :catchall_2
    move-exception p1

    monitor-exit p0

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_1
    .end packed-switch
.end method

.method public unifiedDownload(Lccsansan/m/getDownloadedList;Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)V
    .locals 2

    .line 13
    sget v0, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 5
    :cond_0
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 6
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/m/unifiedDownload$removeDownloadListener;

    invoke-direct {v1, p0, p1, p2}, Lccsansan/m/unifiedDownload$removeDownloadListener;-><init>(Lccsansan/m/unifiedDownload;Lccsansan/m/getDownloadedList;Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-direct {p0, p1, p2}, Lccsansan/m/unifiedDownload;->addDownloadListener(Lccsansan/m/getDownloadedList;Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)Z

    :goto_0
    sget p1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized unifiedDownload(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 9

    monitor-enter p0

    .line 3
    :try_start_0
    sget v0, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 3
    iget-object v3, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    invoke-virtual/range {v3 .. v8}, Lccsansan/m/deleteDownItem;->getDownloadingList(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    :goto_1
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_0
    move-exception p1

    goto :goto_6

    :goto_2
    :try_start_4
    iget-object v3, p0, Lccsansan/m/unifiedDownload;->removeDownloadListener:Lccsansan/m/deleteDownItem;

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    invoke-virtual/range {v3 .. v8}, Lccsansan/m/deleteDownItem;->getDownloadingList(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_3
    :try_start_5
    sget p2, Lccsansan/m/unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 p2, p2, 0x21

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/m/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p2, p2, 0x2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez p2, :cond_1

    const/16 p2, 0xc

    goto :goto_4

    :cond_1
    const/16 p2, 0x5f

    :goto_4
    packed-switch p2, :pswitch_data_1

    goto :goto_5

    :pswitch_1
    monitor-exit p0

    return p1

    :goto_5
    :try_start_6
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :goto_6
    monitor-exit p0

    return v1

    .line 1
    :catchall_2
    move-exception p1

    monitor-exit p0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5f
        :pswitch_1
    .end packed-switch
.end method
