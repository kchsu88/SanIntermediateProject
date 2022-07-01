.class public final enum Lccsancom/san/convert/database/addDownloadListener;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/san/convert/database/addDownloadListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/san/convert/database/addDownloadListener;

.field public static final enum ACTIVATE_FAILURE:Lccsancom/san/convert/database/addDownloadListener;

.field public static final enum ACTIVATE_ING:Lccsancom/san/convert/database/addDownloadListener;

.field public static final enum ACTIVATE_PENDING:Lccsancom/san/convert/database/addDownloadListener;

.field public static final enum ACTIVATE_SUCCESS:Lccsancom/san/convert/database/addDownloadListener;

.field public static final enum AZ_FAILURE:Lccsancom/san/convert/database/addDownloadListener;

.field public static final enum AZ_ING:Lccsancom/san/convert/database/addDownloadListener;

.field public static final enum AZ_PENDING:Lccsancom/san/convert/database/addDownloadListener;

.field public static final enum AZ_SUCCESS:Lccsancom/san/convert/database/addDownloadListener;

.field private static IncentiveDownloadUtils:I = 0x0

.field public static final STATE_ACTIVATES_EXCLUDE_SUCCESS:I = 0xb0

.field public static final STATE_AZS_EXCLUDE_SUCCESS:I = 0xb

.field public static final STATE_FAILURES:I = 0x88

.field public static final STATE_PENDINGS:I = 0x11

.field public static final STATE_SUCCESSES:I = 0x44

.field private static addDownloadListener:I

.field private static getDownloadingList:I


# instance fields
.field name:Ljava/lang/String;

.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x0

    sput v0, Lccsancom/san/convert/database/addDownloadListener;->IncentiveDownloadUtils:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/convert/database/addDownloadListener;->addDownloadListener:I

    invoke-static {}, Lccsancom/san/convert/database/addDownloadListener;->IncentiveDownloadUtils()V

    .line 1
    new-instance v2, Lccsancom/san/convert/database/addDownloadListener;

    const-string v3, ""

    invoke-static {v3}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x10

    add-int/2addr v4, v5

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v6

    shr-int/lit8 v6, v6, 0x16

    const/16 v7, 0x8

    add-int/2addr v6, v7

    invoke-static {v3, v3, v0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v8

    rsub-int v8, v8, 0x127

    const-string v9, "\ufff5\u0006\ufffb\u0004\ufffa\uffff\u0004\ufffd\uffff\u0004\t\n\ufff7\u0002\u0002"

    invoke-static {v9, v0, v4, v6, v8}, Lccsancom/san/convert/database/addDownloadListener;->unifiedDownload(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    const-string v6, "AZ_PENDING"

    invoke-direct {v2, v6, v0, v4, v1}, Lccsancom/san/convert/database/addDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lccsancom/san/convert/database/addDownloadListener;->AZ_PENDING:Lccsancom/san/convert/database/addDownloadListener;

    .line 5
    new-instance v4, Lccsancom/san/convert/database/addDownloadListener;

    invoke-static {v3}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v6

    rsub-int/lit8 v6, v6, 0xa

    invoke-static {v3, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v8

    const/4 v9, 0x2

    add-int/2addr v8, v9

    const/16 v10, 0x30

    invoke-static {v10}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v11

    rsub-int v11, v11, 0x157

    const-string v12, "\u0004\ufffd\uffff\u0004\t\n\ufff7\u0002\u0002\ufff5\uffff"

    invoke-static {v12, v0, v6, v8, v11}, Lccsancom/san/convert/database/addDownloadListener;->unifiedDownload(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    const-string v8, "AZ_ING"

    invoke-direct {v4, v8, v1, v6, v9}, Lccsancom/san/convert/database/addDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lccsancom/san/convert/database/addDownloadListener;->AZ_ING:Lccsancom/san/convert/database/addDownloadListener;

    .line 9
    new-instance v6, Lccsancom/san/convert/database/addDownloadListener;

    const v8, 0x100000f

    invoke-static {v0, v0, v0}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v11

    add-int/2addr v11, v8

    invoke-static {v3, v0}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v8

    const/4 v12, 0x4

    rsub-int/lit8 v8, v8, 0x4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v13

    shr-int/2addr v13, v5

    rsub-int v13, v13, 0x128

    const-string v14, "\ufff8\ufffa\u0008\u0008\ufffe\u0003\u0008\t\ufff6\u0001\u0001\ufff4\u0008\n\ufff8"

    invoke-static {v14, v0, v11, v8, v13}, Lccsancom/san/convert/database/addDownloadListener;->unifiedDownload(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    const-string v11, "AZ_SUCCESS"

    invoke-direct {v6, v11, v9, v8, v12}, Lccsancom/san/convert/database/addDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lccsancom/san/convert/database/addDownloadListener;->AZ_SUCCESS:Lccsancom/san/convert/database/addDownloadListener;

    .line 13
    new-instance v8, Lccsancom/san/convert/database/addDownloadListener;

    invoke-static {v3, v10, v0, v0}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    add-int/2addr v3, v5

    const-wide/16 v13, 0x0

    invoke-static {v13, v14}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v11

    const/4 v13, 0x3

    rsub-int/lit8 v11, v11, 0x3

    invoke-static {v10}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v10

    add-int/lit16 v10, v10, 0xf7

    const-string v14, "\t\u0004\uffff\ufffb\u0008\u000b\u0002\uffff\ufff7\ufffc\ufff5\u0002\u0002\ufff7\n"

    invoke-static {v14, v1, v3, v11, v10}, Lccsancom/san/convert/database/addDownloadListener;->unifiedDownload(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const-string v10, "AZ_FAILURE"

    invoke-direct {v8, v10, v13, v3, v7}, Lccsancom/san/convert/database/addDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lccsancom/san/convert/database/addDownloadListener;->AZ_FAILURE:Lccsancom/san/convert/database/addDownloadListener;

    .line 17
    new-instance v3, Lccsancom/san/convert/database/addDownloadListener;

    const-string v10, "ACTIVATE_PENDING"

    const-string v11, "activate_pending"

    invoke-direct {v3, v10, v12, v11, v5}, Lccsancom/san/convert/database/addDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lccsancom/san/convert/database/addDownloadListener;->ACTIVATE_PENDING:Lccsancom/san/convert/database/addDownloadListener;

    .line 21
    new-instance v5, Lccsancom/san/convert/database/addDownloadListener;

    const/16 v10, 0x20

    const-string v11, "ACTIVATE_ING"

    const/4 v14, 0x5

    const-string v15, "activate_ing"

    invoke-direct {v5, v11, v14, v15, v10}, Lccsancom/san/convert/database/addDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lccsancom/san/convert/database/addDownloadListener;->ACTIVATE_ING:Lccsancom/san/convert/database/addDownloadListener;

    .line 25
    new-instance v10, Lccsancom/san/convert/database/addDownloadListener;

    const/16 v11, 0x40

    const-string v15, "ACTIVATE_SUCCESS"

    const/4 v14, 0x6

    const-string v12, "activate_success"

    invoke-direct {v10, v15, v14, v12, v11}, Lccsancom/san/convert/database/addDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lccsancom/san/convert/database/addDownloadListener;->ACTIVATE_SUCCESS:Lccsancom/san/convert/database/addDownloadListener;

    .line 29
    new-instance v11, Lccsancom/san/convert/database/addDownloadListener;

    const-string v12, "ACTIVATE_FAILURE"

    const/4 v15, 0x7

    const-string v14, "activate_failure"

    const/16 v13, 0x80

    invoke-direct {v11, v12, v15, v14, v13}, Lccsancom/san/convert/database/addDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lccsancom/san/convert/database/addDownloadListener;->ACTIVATE_FAILURE:Lccsancom/san/convert/database/addDownloadListener;

    .line 30
    new-array v7, v7, [Lccsancom/san/convert/database/addDownloadListener;

    aput-object v2, v7, v0

    aput-object v4, v7, v1

    aput-object v6, v7, v9

    const/4 v0, 0x3

    aput-object v8, v7, v0

    const/4 v1, 0x4

    aput-object v3, v7, v1

    const/4 v1, 0x5

    aput-object v5, v7, v1

    const/4 v1, 0x6

    aput-object v10, v7, v1

    aput-object v11, v7, v15

    sput-object v7, Lccsancom/san/convert/database/addDownloadListener;->$VALUES:[Lccsancom/san/convert/database/addDownloadListener;

    sget v1, Lccsancom/san/convert/database/addDownloadListener;->addDownloadListener:I

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/convert/database/addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/2addr v1, v9

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lccsancom/san/convert/database/addDownloadListener;->name:Ljava/lang/String;

    .line 3
    iput p4, p0, Lccsancom/san/convert/database/addDownloadListener;->value:I

    return-void
.end method

.method static IncentiveDownloadUtils()V
    .locals 1

    const/16 v0, 0xbd

    sput v0, Lccsancom/san/convert/database/addDownloadListener;->getDownloadingList:I

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lccsancom/san/convert/database/addDownloadListener;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;

    .line 2
    .end local p0    # "name":Ljava/lang/String;
    nop

    .line 1
    invoke-static {}, Lccsancom/san/convert/database/addDownloadListener;->values()[Lccsancom/san/convert/database/addDownloadListener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_3

    .line 2
    sget v5, Lccsancom/san/convert/database/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v5, v5, 0x1d

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsancom/san/convert/database/addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lccsancom/san/convert/database/addDownloadListener;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_2

    .line 1
    :pswitch_0
    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4}, Lccsancom/san/convert/database/addDownloadListener;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_4

    :goto_2
    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    const/4 v6, 0x0

    :goto_3
    packed-switch v6, :pswitch_data_1

    goto :goto_5

    :pswitch_1
    move-object v4, v5

    :goto_4
    sget p0, Lccsancom/san/convert/database/addDownloadListener;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x57

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/convert/database/addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    return-object v4

    :cond_2
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static fromValue(I)Lccsancom/san/convert/database/addDownloadListener;
    .locals 6
    .param p0, "value"    # I

    .line 2
    .end local p0    # "value":I
    sget v0, Lccsancom/san/convert/database/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    invoke-static {}, Lccsancom/san/convert/database/addDownloadListener;->values()[Lccsancom/san/convert/database/addDownloadListener;

    move-result-object v0

    array-length v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lccsancom/san/convert/database/addDownloadListener;->values()[Lccsancom/san/convert/database/addDownloadListener;

    move-result-object v0

    array-length v1, v0

    .line 2
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_1
    if-ge v3, v1, :cond_1

    const/16 v4, 0x43

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 2
    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4}, Lccsancom/san/convert/database/addDownloadListener;->getValue()I

    move-result v5

    if-ne p0, v5, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 1
    sget v4, Lccsancom/san/convert/database/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v4, v4, 0x3b

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsancom/san/convert/database/addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    packed-switch v4, :pswitch_data_1

    .line 2
    goto :goto_1

    .line 1
    :pswitch_1
    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static toName(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .line 3
    .end local p0    # "value":I
    sget v0, Lccsancom/san/convert/database/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsancom/san/convert/database/addDownloadListener;->values()[Lccsancom/san/convert/database/addDownloadListener;

    move-result-object v0

    array-length v2, v0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lccsancom/san/convert/database/addDownloadListener;->values()[Lccsancom/san/convert/database/addDownloadListener;

    move-result-object v0

    array-length v2, v0

    .line 3
    :goto_1
    nop

    .line 1
    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 2
    invoke-virtual {v3}, Lccsancom/san/convert/database/addDownloadListener;->getValue()I

    move-result v4

    if-ne p0, v4, :cond_1

    .line 1
    const/16 v4, 0x2e

    goto :goto_3

    :cond_1
    const/16 v4, 0x5a

    :goto_3
    packed-switch v4, :pswitch_data_1

    .line 3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_1
    invoke-virtual {v3}, Lccsancom/san/convert/database/addDownloadListener;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    nop

    .line 1
    sget p0, Lccsancom/san/convert/database/addDownloadListener;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x4b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/convert/database/addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    .line 3
    const-string p0, ""

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_1
    .end packed-switch
.end method

.method public static toValue(Ljava/lang/String;)I
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    .end local p0    # "name":Ljava/lang/String;
    sget v0, Lccsancom/san/convert/database/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsancom/san/convert/database/addDownloadListener;->values()[Lccsancom/san/convert/database/addDownloadListener;

    move-result-object v0

    array-length v1, v0

    .line 3
    sget v2, Lccsancom/san/convert/database/addDownloadListener;->addDownloadListener:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsancom/san/convert/database/addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    .line 1
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 3
    const/16 v5, 0x36

    goto :goto_1

    :cond_1
    const/16 v5, 0x60

    :goto_1
    packed-switch v5, :pswitch_data_0

    const/4 p0, -0x1

    goto :goto_4

    .line 1
    :pswitch_0
    aget-object v5, v0, v4

    .line 2
    invoke-virtual {v5}, Lccsancom/san/convert/database/addDownloadListener;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3
    sget p0, Lccsancom/san/convert/database/addDownloadListener;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/convert/database/addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v5}, Lccsancom/san/convert/database/addDownloadListener;->getValue()I

    move-result p0

    packed-switch v3, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    const/16 v0, 0x4c

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    throw p0

    :goto_3
    return p0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_4
    sget v0, Lccsancom/san/convert/database/addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p0

    :catchall_1
    move-exception p0

    throw p0

    :cond_4
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload(Ljava/lang/String;ZIII)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1120
    sget-object v0, Lccsansan/d/trackReportClick;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1122
    nop

    .line 1123
    :try_start_0
    new-array v1, p2, [C

    .line 1127
    const/4 v2, 0x0

    sput v2, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    :goto_0
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    if-ge v3, p2, :cond_1

    .line 1129
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    aget-char v3, p0, v3

    sput v3, Lccsansan/d/trackReportClick;->unifiedDownload:I

    .line 1131
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sget v4, Lccsansan/d/trackReportClick;->unifiedDownload:I

    add-int/2addr v4, p4

    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 1132
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    aget-char v4, v1, v3

    sget v5, Lccsancom/san/convert/database/addDownloadListener;->getDownloadingList:I

    sub-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 1127
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    goto :goto_0

    .line 1136
    :cond_1
    if-lez p3, :cond_2

    .line 1138
    sput p3, Lccsansan/d/trackReportClick;->getDownloadingList:I

    .line 1140
    new-array p0, p2, [C

    .line 1142
    invoke-static {v1, v2, p0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1143
    sget p3, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sub-int p3, p2, p3

    sget p4, Lccsansan/d/trackReportClick;->getDownloadingList:I

    invoke-static {p0, v2, v1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1144
    sget p3, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sget p4, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sub-int p4, p2, p4

    invoke-static {p0, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1148
    :cond_2
    if-eqz p1, :cond_4

    .line 1150
    new-array p0, p2, [C

    .line 1152
    sput v2, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    :goto_1
    sget p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    if-ge p1, p2, :cond_3

    .line 1154
    sget p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sget p3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sub-int p3, p2, p3

    add-int/lit8 p3, p3, -0x1

    aget-char p3, v1, p3

    aput-char p3, p0, p1

    .line 1152
    sget p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    goto :goto_1

    .line 1157
    :cond_3
    move-object v1, p0

    .line 1160
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1161
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/san/convert/database/addDownloadListener;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1
    .end local p0    # "name":Ljava/lang/String;
    sget v0, Lccsancom/san/convert/database/addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    const-class v0, Lccsancom/san/convert/database/addDownloadListener;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/san/convert/database/addDownloadListener;

    sget v0, Lccsancom/san/convert/database/addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
    const/16 v0, 0x24

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lccsancom/san/convert/database/addDownloadListener;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/convert/database/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    sget-object v0, Lccsancom/san/convert/database/addDownloadListener;->$VALUES:[Lccsancom/san/convert/database/addDownloadListener;

    invoke-virtual {v0}, [Lccsancom/san/convert/database/addDownloadListener;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/san/convert/database/addDownloadListener;

    sget v1, Lccsancom/san/convert/database/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/convert/database/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/convert/database/addDownloadListener;->name:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x71

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v1, 0x2d

    goto :goto_0

    :cond_1
    const/16 v1, 0x30

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 v1, 0xa

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
    .end packed-switch
.end method

.method public getValue()I
    .locals 3

    .line 1
    sget v0, Lccsancom/san/convert/database/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsancom/san/convert/database/addDownloadListener;->value:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsancom/san/convert/database/addDownloadListener;->value:I

    goto :goto_2

    :goto_1
    const/4 v2, 0x6

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
