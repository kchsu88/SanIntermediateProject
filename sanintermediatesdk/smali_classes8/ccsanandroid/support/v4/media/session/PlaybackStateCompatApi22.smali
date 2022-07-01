.class Lccsanandroid/support/v4/media/session/PlaybackStateCompatApi22;
.super Ljava/lang/Object;
.source "PlaybackStateCompatApi22.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static getExtras(Ljava/lang/Object;)Lccsanandroid/os/Bundle;
    .locals 1
    .param p0, "stateObj"    # Ljava/lang/Object;

    .line 29
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/session/PlaybackState;

    invoke-virtual {v0}, Lccsanandroid/media/session/PlaybackState;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLccsanandroid/os/Bundle;)Ljava/lang/Object;
    .locals 10
    .param p0, "state"    # I
    .param p1, "position"    # J
    .param p3, "bufferedPosition"    # J
    .param p5, "speed"    # F
    .param p6, "actions"    # J
    .param p8, "errorMessage"    # Ljava/lang/CharSequence;
    .param p9, "updateTime"    # J
    .param p12, "activeItemId"    # J
    .param p14, "extras"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJFJ",
            "Ljava/lang/CharSequence;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;J",
            "Lccsanandroid/os/Bundle;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 36
    .local p11, "customActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Lccsanandroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Lccsanandroid/media/session/PlaybackState$Builder;-><init>()V

    .line 37
    .local v0, "stateObj":Lccsanandroid/media/session/PlaybackState$Builder;
    move-object v1, v0

    move v2, p0

    move-wide v3, p1

    move v5, p5

    move-wide/from16 v6, p9

    invoke-virtual/range {v1 .. v7}, Lccsanandroid/media/session/PlaybackState$Builder;->setState(IJFJ)Lccsanandroid/media/session/PlaybackState$Builder;

    .line 38
    move-wide v1, p3

    invoke-virtual {v0, p3, p4}, Lccsanandroid/media/session/PlaybackState$Builder;->setBufferedPosition(J)Lccsanandroid/media/session/PlaybackState$Builder;

    .line 39
    move-wide/from16 v3, p6

    invoke-virtual {v0, v3, v4}, Lccsanandroid/media/session/PlaybackState$Builder;->setActions(J)Lccsanandroid/media/session/PlaybackState$Builder;

    .line 40
    move-object/from16 v5, p8

    invoke-virtual {v0, v5}, Lccsanandroid/media/session/PlaybackState$Builder;->setErrorMessage(Ljava/lang/CharSequence;)Lccsanandroid/media/session/PlaybackState$Builder;

    .line 41
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 42
    .local v7, "customAction":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lccsanandroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {v0, v8}, Lccsanandroid/media/session/PlaybackState$Builder;->addCustomAction(Lccsanandroid/media/session/PlaybackState$CustomAction;)Lccsanandroid/media/session/PlaybackState$Builder;

    .line 43
    .end local v7    # "customAction":Ljava/lang/Object;
    goto :goto_0

    .line 44
    :cond_0
    move-wide/from16 v6, p12

    invoke-virtual {v0, v6, v7}, Lccsanandroid/media/session/PlaybackState$Builder;->setActiveQueueItemId(J)Lccsanandroid/media/session/PlaybackState$Builder;

    .line 45
    move-object/from16 v8, p14

    invoke-virtual {v0, v8}, Lccsanandroid/media/session/PlaybackState$Builder;->setExtras(Lccsanandroid/os/Bundle;)Lccsanandroid/media/session/PlaybackState$Builder;

    .line 46
    invoke-virtual {v0}, Lccsanandroid/media/session/PlaybackState$Builder;->build()Lccsanandroid/media/session/PlaybackState;

    move-result-object v9

    return-object v9
.end method
