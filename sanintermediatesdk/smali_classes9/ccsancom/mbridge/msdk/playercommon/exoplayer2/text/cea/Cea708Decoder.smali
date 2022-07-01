.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;
    }
.end annotation


# static fields
.field private static final CC_VALID_FLAG:I = 0x4

.field private static final CHARACTER_BIG_CARONS:I = 0x2a

.field private static final CHARACTER_BIG_OE:I = 0x2c

.field private static final CHARACTER_BOLD_BULLET:I = 0x35

.field private static final CHARACTER_CLOSE_DOUBLE_QUOTE:I = 0x34

.field private static final CHARACTER_CLOSE_SINGLE_QUOTE:I = 0x32

.field private static final CHARACTER_DIAERESIS_Y:I = 0x3f

.field private static final CHARACTER_ELLIPSIS:I = 0x25

.field private static final CHARACTER_FIVE_EIGHTHS:I = 0x78

.field private static final CHARACTER_HORIZONTAL_BORDER:I = 0x7d

.field private static final CHARACTER_LOWER_LEFT_BORDER:I = 0x7c

.field private static final CHARACTER_LOWER_RIGHT_BORDER:I = 0x7e

.field private static final CHARACTER_MN:I = 0x7f

.field private static final CHARACTER_NBTSP:I = 0x21

.field private static final CHARACTER_ONE_EIGHTH:I = 0x76

.field private static final CHARACTER_OPEN_DOUBLE_QUOTE:I = 0x33

.field private static final CHARACTER_OPEN_SINGLE_QUOTE:I = 0x31

.field private static final CHARACTER_SEVEN_EIGHTHS:I = 0x79

.field private static final CHARACTER_SM:I = 0x3d

.field private static final CHARACTER_SMALL_CARONS:I = 0x3a

.field private static final CHARACTER_SMALL_OE:I = 0x3c

.field private static final CHARACTER_SOLID_BLOCK:I = 0x30

.field private static final CHARACTER_THREE_EIGHTHS:I = 0x77

.field private static final CHARACTER_TM:I = 0x39

.field private static final CHARACTER_TSP:I = 0x20

.field private static final CHARACTER_UPPER_LEFT_BORDER:I = 0x7f

.field private static final CHARACTER_UPPER_RIGHT_BORDER:I = 0x7b

.field private static final CHARACTER_VERTICAL_BORDER:I = 0x7a

.field private static final COMMAND_BS:I = 0x8

.field private static final COMMAND_CLW:I = 0x88

.field private static final COMMAND_CR:I = 0xd

.field private static final COMMAND_CW0:I = 0x80

.field private static final COMMAND_CW1:I = 0x81

.field private static final COMMAND_CW2:I = 0x82

.field private static final COMMAND_CW3:I = 0x83

.field private static final COMMAND_CW4:I = 0x84

.field private static final COMMAND_CW5:I = 0x85

.field private static final COMMAND_CW6:I = 0x86

.field private static final COMMAND_CW7:I = 0x87

.field private static final COMMAND_DF0:I = 0x98

.field private static final COMMAND_DF1:I = 0x99

.field private static final COMMAND_DF2:I = 0x9a

.field private static final COMMAND_DF3:I = 0x9b

.field private static final COMMAND_DF4:I = 0x9c

.field private static final COMMAND_DF5:I = 0x9d

.field private static final COMMAND_DF6:I = 0x9e

.field private static final COMMAND_DF7:I = 0x9f

.field private static final COMMAND_DLC:I = 0x8e

.field private static final COMMAND_DLW:I = 0x8c

.field private static final COMMAND_DLY:I = 0x8d

.field private static final COMMAND_DSW:I = 0x89

.field private static final COMMAND_ETX:I = 0x3

.field private static final COMMAND_EXT1:I = 0x10

.field private static final COMMAND_EXT1_END:I = 0x17

.field private static final COMMAND_EXT1_START:I = 0x11

.field private static final COMMAND_FF:I = 0xc

.field private static final COMMAND_HCR:I = 0xe

.field private static final COMMAND_HDW:I = 0x8a

.field private static final COMMAND_NUL:I = 0x0

.field private static final COMMAND_P16_END:I = 0x1f

.field private static final COMMAND_P16_START:I = 0x18

.field private static final COMMAND_RST:I = 0x8f

.field private static final COMMAND_SPA:I = 0x90

.field private static final COMMAND_SPC:I = 0x91

.field private static final COMMAND_SPL:I = 0x92

.field private static final COMMAND_SWA:I = 0x97

.field private static final COMMAND_TGW:I = 0x8b

.field private static final DTVCC_PACKET_DATA:I = 0x2

.field private static final DTVCC_PACKET_START:I = 0x3

.field private static final GROUP_C0_END:I = 0x1f

.field private static final GROUP_C1_END:I = 0x9f

.field private static final GROUP_C2_END:I = 0x1f

.field private static final GROUP_C3_END:I = 0x9f

.field private static final GROUP_G0_END:I = 0x7f

.field private static final GROUP_G1_END:I = 0xff

.field private static final GROUP_G2_END:I = 0x7f

.field private static final GROUP_G3_END:I = 0xff

.field private static final NUM_WINDOWS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Cea708Decoder"


# instance fields
.field private final ccData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private final cueBuilders:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

.field private currentDtvCcPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

.field private currentWindow:I

.field private lastCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedServiceNumber:I

.field private final serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 155
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;-><init>()V

    .line 156
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->ccData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 157
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 158
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->selectedServiceNumber:I

    .line 160
    const/16 p1, 0x8

    new-array v0, p1, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 161
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 162
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-direct {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;-><init>()V

    aput-object v3, v2, v1

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object p1, p1, v0

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 166
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 167
    return-void
.end method

.method private finalizeCurrentPacket()V
    .locals 1

    .line 251
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v0, :cond_0

    .line 253
    return-void

    .line 256
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->processCurrentPacket()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 258
    return-void
.end method

.method private getDisplayCues()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 739
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 740
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 741
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 742
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->build()Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Cue;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 745
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 746
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private handleC0Command(I)V
    .locals 3

    .line 338
    sparse-switch p1, :sswitch_data_0

    .line 358
    const/16 v0, 0x11

    const-string v1, "Cea708Decoder"

    if-lt p1, v0, :cond_0

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Currently unsupported COMMAND_EXT1 Command: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 356
    :sswitch_0
    goto :goto_0

    .line 352
    :sswitch_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 353
    goto :goto_0

    .line 349
    :sswitch_2
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 350
    goto :goto_0

    .line 346
    :sswitch_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backspace()V

    .line 347
    goto :goto_0

    .line 343
    :sswitch_4
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 344
    goto :goto_0

    .line 341
    :sswitch_5
    goto :goto_0

    .line 361
    :cond_0
    const/16 v0, 0x18

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_1

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Currently unsupported COMMAND_P16 Command: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 365
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid C0 command: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x3 -> :sswitch_4
        0x8 -> :sswitch_3
        0xc -> :sswitch_2
        0xd -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private handleC1Command(I)V
    .locals 4

    .line 372
    const/16 v0, 0x10

    const/16 v1, 0x8

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 482
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid C1 command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 473
    :pswitch_1
    add-int/lit16 p1, p1, -0x98

    .line 474
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleDefineWindow(I)V

    .line 476
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v0, p1, :cond_e

    .line 477
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 478
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object p1, v0, p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    goto/16 :goto_5

    .line 458
    :pswitch_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    move-result p1

    if-nez p1, :cond_0

    .line 460
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    .line 462
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleSetWindowAttributes()V

    .line 464
    goto/16 :goto_5

    .line 450
    :pswitch_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    move-result p1

    if-nez p1, :cond_1

    .line 452
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    .line 454
    :cond_1
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleSetPenLocation()V

    .line 456
    goto/16 :goto_5

    .line 442
    :pswitch_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    move-result p1

    if-nez p1, :cond_2

    .line 444
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    .line 446
    :cond_2
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleSetPenColor()V

    .line 448
    goto/16 :goto_5

    .line 434
    :pswitch_5
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    move-result p1

    if-nez p1, :cond_3

    .line 436
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    .line 438
    :cond_3
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleSetPenAttributes()V

    .line 440
    goto/16 :goto_5

    .line 431
    :pswitch_6
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 432
    goto/16 :goto_5

    .line 429
    :pswitch_7
    goto/16 :goto_5

    .line 425
    :pswitch_8
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 426
    goto/16 :goto_5

    .line 417
    :pswitch_9
    nop

    :goto_0
    if-gt v2, v1, :cond_5

    .line 418
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 419
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->reset()V

    .line 417
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    :cond_5
    goto/16 :goto_5

    .line 409
    :pswitch_a
    const/4 p1, 0x1

    :goto_1
    if-gt p1, v1, :cond_7

    .line 410
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 411
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    .line 412
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isVisible()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setVisibility(Z)V

    .line 409
    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 415
    :cond_7
    goto :goto_5

    .line 402
    :pswitch_b
    nop

    :goto_2
    if-gt v2, v1, :cond_9

    .line 403
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 404
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setVisibility(Z)V

    .line 402
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 407
    :cond_9
    goto :goto_5

    .line 395
    :pswitch_c
    const/4 p1, 0x1

    :goto_3
    if-gt p1, v1, :cond_b

    .line 396
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 397
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setVisibility(Z)V

    .line 395
    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 400
    :cond_b
    goto :goto_5

    .line 388
    :pswitch_d
    nop

    :goto_4
    if-gt v2, v1, :cond_d

    .line 389
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 390
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->clear()V

    .line 388
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 393
    :cond_d
    goto :goto_5

    .line 381
    :pswitch_e
    add-int/lit8 p1, p1, -0x80

    .line 382
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v0, p1, :cond_e

    .line 383
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 384
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object p1, v0, p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 484
    :cond_e
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private handleC2Command(I)V
    .locals 1

    .line 488
    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 490
    :cond_0
    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    .line 491
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 492
    :cond_1
    const/16 v0, 0x17

    if-gt p1, v0, :cond_2

    .line 493
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 494
    :cond_2
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_3

    .line 495
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 497
    :cond_3
    :goto_0
    return-void
.end method

.method private handleC3Command(I)V
    .locals 1

    .line 501
    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    .line 502
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 503
    :cond_0
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_1

    .line 504
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 505
    :cond_1
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_2

    .line 509
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 510
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 511
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 513
    :cond_2
    :goto_0
    return-void
.end method

.method private handleDefineWindow(I)V
    .locals 14

    .line 709
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v1, v0, p1

    .line 713
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 714
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    .line 715
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    .line 716
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    .line 717
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 719
    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    .line 720
    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 722
    iget-object v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 724
    iget-object v9, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 725
    iget-object v9, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v9, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 727
    iget-object v10, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v10, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 728
    iget-object v10, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v12, 0x6

    invoke-virtual {v10, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 730
    iget-object v12, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v12, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 731
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 732
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 734
    move v5, p1

    invoke-virtual/range {v1 .. v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->defineWindow(ZZZIZIIIIIII)V

    .line 736
    return-void
.end method

.method private handleG0Character(I)V
    .locals 1

    .line 516
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 517
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x266b

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 519
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 521
    :goto_0
    return-void
.end method

.method private handleG1Character(I)V
    .locals 1

    .line 524
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 525
    return-void
.end method

.method private handleG2Character(I)V
    .locals 2

    .line 528
    sparse-switch p1, :sswitch_data_0

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid G2 character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 605
    :sswitch_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x250c

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 606
    goto/16 :goto_0

    .line 602
    :sswitch_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2518

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 603
    goto/16 :goto_0

    .line 599
    :sswitch_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2500

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 600
    goto/16 :goto_0

    .line 596
    :sswitch_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2514

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 597
    goto/16 :goto_0

    .line 593
    :sswitch_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2510

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 594
    goto/16 :goto_0

    .line 590
    :sswitch_5
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2502

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 591
    goto/16 :goto_0

    .line 587
    :sswitch_6
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x215e

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 588
    goto/16 :goto_0

    .line 584
    :sswitch_7
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x215d

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 585
    goto/16 :goto_0

    .line 581
    :sswitch_8
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x215c

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 582
    goto/16 :goto_0

    .line 578
    :sswitch_9
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x215b

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 579
    goto/16 :goto_0

    .line 575
    :sswitch_a
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x178

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 576
    goto/16 :goto_0

    .line 572
    :sswitch_b
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2120

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 573
    goto/16 :goto_0

    .line 569
    :sswitch_c
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x153

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 570
    goto/16 :goto_0

    .line 566
    :sswitch_d
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x161

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 567
    goto :goto_0

    .line 563
    :sswitch_e
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2122

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 564
    goto :goto_0

    .line 560
    :sswitch_f
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2022

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 561
    goto :goto_0

    .line 557
    :sswitch_10
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x201d

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 558
    goto :goto_0

    .line 554
    :sswitch_11
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x201c

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 555
    goto :goto_0

    .line 551
    :sswitch_12
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2019

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 552
    goto :goto_0

    .line 548
    :sswitch_13
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2018

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 549
    goto :goto_0

    .line 545
    :sswitch_14
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2588

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 546
    goto :goto_0

    .line 542
    :sswitch_15
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x152

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 543
    goto :goto_0

    .line 539
    :sswitch_16
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x160

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 540
    goto :goto_0

    .line 536
    :sswitch_17
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2026

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 537
    goto :goto_0

    .line 533
    :sswitch_18
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 534
    goto :goto_0

    .line 530
    :sswitch_19
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 531
    nop

    .line 612
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_19
        0x21 -> :sswitch_18
        0x25 -> :sswitch_17
        0x2a -> :sswitch_16
        0x2c -> :sswitch_15
        0x30 -> :sswitch_14
        0x31 -> :sswitch_13
        0x32 -> :sswitch_12
        0x33 -> :sswitch_11
        0x34 -> :sswitch_10
        0x35 -> :sswitch_f
        0x39 -> :sswitch_e
        0x3a -> :sswitch_d
        0x3c -> :sswitch_c
        0x3d -> :sswitch_b
        0x3f -> :sswitch_a
        0x76 -> :sswitch_9
        0x77 -> :sswitch_8
        0x78 -> :sswitch_7
        0x79 -> :sswitch_6
        0x7a -> :sswitch_5
        0x7b -> :sswitch_4
        0x7c -> :sswitch_3
        0x7d -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method private handleG3Character(I)V
    .locals 2

    .line 615
    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    .line 616
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x33c4

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 618
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid G3 character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 622
    :goto_0
    return-void
.end method

.method private handleSetPenAttributes()V
    .locals 10

    .line 627
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 628
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 629
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 631
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    .line 632
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    .line 633
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 634
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 636
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual/range {v2 .. v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setPenAttributes(IIIZZII)V

    .line 638
    return-void
.end method

.method private handleSetPenColor()V
    .locals 6

    .line 643
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 644
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 645
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 646
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 647
    invoke-static {v2, v3, v4, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v0

    .line 650
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 651
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 652
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 653
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 654
    invoke-static {v3, v4, v5, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    .line 657
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 658
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 659
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 660
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 661
    invoke-static {v3, v4, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(III)I

    move-result v1

    .line 663
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {v3, v0, v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setPenColor(III)V

    .line 664
    return-void
.end method

.method private handleSetPenLocation()V
    .locals 3

    .line 669
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 670
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 672
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 673
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 675
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {v2, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setPenLocation(II)V

    .line 676
    return-void
.end method

.method private handleSetWindowAttributes()V
    .locals 13

    .line 681
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 682
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 683
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 684
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 685
    invoke-static {v2, v3, v4, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v6

    .line 687
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 688
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 689
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 690
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 691
    invoke-static {v2, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(III)I

    move-result v7

    .line 693
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 694
    or-int/lit8 v0, v0, 0x4

    move v9, v0

    goto :goto_0

    .line 693
    :cond_0
    move v9, v0

    .line 696
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v8

    .line 697
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 698
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 699
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 702
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 704
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual/range {v5 .. v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setWindowAttributes(IIZIIII)V

    .line 706
    return-void
.end method

.method private processCurrentPacket()V
    .locals 10

    .line 261
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    const-string v4, "Cea708Decoder"

    if-eq v0, v1, :cond_0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DtvCcPacket ended prematurely; size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", but current index is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (sequence number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->sequenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "); ignoring packet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v5, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    invoke-virtual {v0, v1, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->reset([BI)V

    .line 270
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 271
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 272
    const/4 v5, 0x7

    if-ne v0, v5, :cond_1

    .line 274
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 275
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 279
    :cond_1
    if-nez v1, :cond_3

    .line 280
    if-eqz v0, :cond_2

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceNumber is non-zero ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when blockSize is 0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_2
    return-void

    .line 286
    :cond_3
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->selectedServiceNumber:I

    if-eq v0, v1, :cond_4

    .line 287
    return-void

    .line 293
    :cond_4
    const/4 v0, 0x0

    .line 295
    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    if-lez v1, :cond_e

    .line 296
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 297
    const/16 v5, 0x10

    const/16 v6, 0xff

    const/16 v7, 0x9f

    const/16 v8, 0x7f

    const/16 v9, 0x1f

    if-eq v1, v5, :cond_9

    .line 298
    if-gt v1, v9, :cond_5

    .line 299
    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleC0Command(I)V

    goto :goto_1

    .line 301
    :cond_5
    if-gt v1, v8, :cond_6

    .line 302
    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleG0Character(I)V

    .line 303
    const/4 v0, 0x1

    goto :goto_1

    .line 304
    :cond_6
    if-gt v1, v7, :cond_7

    .line 305
    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleC1Command(I)V

    .line 306
    const/4 v0, 0x1

    goto :goto_1

    .line 307
    :cond_7
    if-gt v1, v6, :cond_8

    .line 308
    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleG1Character(I)V

    .line 309
    const/4 v0, 0x1

    goto :goto_1

    .line 311
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid base command: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 315
    :cond_9
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 316
    if-gt v1, v9, :cond_a

    .line 317
    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleC2Command(I)V

    goto :goto_1

    .line 318
    :cond_a
    if-gt v1, v8, :cond_b

    .line 319
    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleG2Character(I)V

    .line 320
    const/4 v0, 0x1

    goto :goto_1

    .line 321
    :cond_b
    if-gt v1, v7, :cond_c

    .line 322
    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleC3Command(I)V

    goto :goto_1

    .line 323
    :cond_c
    if-gt v1, v6, :cond_d

    .line 324
    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleG3Character(I)V

    .line 325
    const/4 v0, 0x1

    goto :goto_1

    .line 327
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid extended command: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_1
    goto/16 :goto_0

    .line 332
    :cond_e
    if-eqz v0, :cond_f

    .line 333
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 335
    :cond_f
    return-void
.end method

.method private resetCueBuilders()V
    .locals 2

    .line 750
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 751
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->reset()V

    .line 750
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 753
    :cond_0
    return-void
.end method


# virtual methods
.method protected final createSubtitle()Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Subtitle;
    .locals 2

    .line 192
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    .line 193
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaSubtitle;

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method protected final decode(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 7

    .line 200
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 201
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->ccData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 202
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->ccData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_8

    .line 203
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->ccData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    .line 205
    and-int/lit8 v1, p1, 0x3

    .line 206
    const/4 v2, 0x4

    and-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 207
    :goto_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->ccData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    int-to-byte v2, v2

    .line 208
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->ccData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    int-to-byte v5, v5

    .line 211
    const/4 v6, 0x2

    if-eq v1, v6, :cond_1

    if-eq v1, v0, :cond_1

    .line 212
    goto :goto_0

    .line 215
    :cond_1
    if-nez p1, :cond_2

    .line 217
    goto :goto_0

    .line 220
    :cond_2
    if-ne v1, v0, :cond_4

    .line 221
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    .line 223
    and-int/lit16 p1, v2, 0xc0

    shr-int/lit8 p1, p1, 0x6

    .line 224
    and-int/lit8 v0, v2, 0x3f

    .line 225
    if-nez v0, :cond_3

    .line 226
    const/16 v0, 0x40

    .line 229
    :cond_3
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    invoke-direct {v1, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;-><init>(II)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 230
    iget-object p1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v5, p1, v1

    .line 231
    goto :goto_2

    .line 233
    :cond_4
    if-ne v1, v6, :cond_5

    const/4 v3, 0x1

    :cond_5
    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 235
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez p1, :cond_6

    .line 236
    const-string p1, "Cea708Decoder"

    const-string v0, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    invoke-static {p1, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    goto :goto_0

    .line 240
    :cond_6
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v2, p1, v1

    .line 241
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v5, p1, v1

    .line 244
    :goto_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_7

    .line 245
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    .line 247
    :cond_7
    goto/16 :goto_0

    .line 248
    :cond_8
    return-void
.end method

.method public final bridge synthetic dequeueInputBuffer()Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 46
    invoke-super {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;->dequeueInputBuffer()Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic dequeueOutputBuffer()Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 46
    invoke-super {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;->dequeueOutputBuffer()Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final flush()V
    .locals 3

    .line 176
    invoke-super {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;->flush()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 178
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    .line 179
    const/4 v1, 0x0

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 180
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v1, v2, v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 181
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 182
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 183
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 171
    const-string v0, "Cea708Decoder"

    return-object v0
.end method

.method protected final isNewSubtitleDataAvailable()Z
    .locals 2

    .line 187
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final bridge synthetic queueInputBuffer(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 46
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;->queueInputBuffer(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public final bridge synthetic release()V
    .locals 0

    .line 46
    invoke-super {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;->release()V

    return-void
.end method

.method public final bridge synthetic setPositionUs(J)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;->setPositionUs(J)V

    return-void
.end method
