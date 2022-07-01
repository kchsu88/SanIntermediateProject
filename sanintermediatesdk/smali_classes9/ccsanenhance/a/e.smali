.class public Lccsanenhance/a/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lccsanenhance/a/e;

.field public static b:Lccsanenhance/d/f;


# instance fields
.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanenhance/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lccsanenhance/a/e;

    invoke-direct {v0}, Lccsanenhance/a/e;-><init>()V

    sput-object v0, Lccsanenhance/a/e;->a:Lccsanenhance/a/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanenhance/a/e;->c:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0}, Lccsanenhance/a/e;->c()V

    return-void
.end method

.method public static a()Lccsanenhance/a/e;
    .locals 1

    .line 4
    sget-object v0, Lccsanenhance/a/e;->a:Lccsanenhance/a/e;

    return-object v0
.end method

.method public static synthetic a(Lccsanenhance/a/e;Lccsanenhance/a/g;)Lccsanenhance/b/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsanenhance/a/e;->b(Lccsanenhance/a/g;)Lccsanenhance/b/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lccsanenhance/a/e;Lccsanenhance/f/a;)Lccsanenhance/b/b;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lccsanenhance/a/e;->b(Lccsanenhance/f/a;)Lccsanenhance/b/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lccsanenhance/a/e;Lccsanenhance/b/b;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lccsanenhance/a/e;->a(Lccsanenhance/b/b;)V

    return-void
.end method


# virtual methods
.method public a(Lccsanenhance/a/g;)V
    .locals 1

    .line 5
    new-instance v0, Lccsanenhance/a/e$a;

    invoke-direct {v0, p0, p1}, Lccsanenhance/a/e$a;-><init>(Lccsanenhance/a/e;Lccsanenhance/a/g;)V

    .line 25
    sget-object p1, Lccsanenhance/a/e;->b:Lccsanenhance/d/f;

    invoke-virtual {p1}, Lccsanenhance/d/f;->b()Lccsanenhance/d/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsanenhance/d/e;->a(Lccsanenhance/d/b;)V

    return-void
.end method

.method public final a(Lccsanenhance/b/b;)V
    .locals 3

    .line 40
    invoke-virtual {p1}, Lccsanenhance/b/b;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanenhance/b/c;->a(Ljava/lang/String;)Lccsanenhance/b/c;

    move-result-object v0

    .line 42
    sget-object v1, Lccsanenhance/b/c;->a:Lccsanenhance/b/c;

    if-ne v0, v1, :cond_4

    .line 43
    new-instance v0, Lccsanenhance/f/c;

    invoke-direct {v0, p1}, Lccsanenhance/f/c;-><init>(Lccsanenhance/b/b;)V

    .line 48
    invoke-virtual {v0}, Lccsanenhance/f/b;->a()Lccsanenhance/f/b$a;

    move-result-object v1

    .line 49
    instance-of v2, v1, Lccsanenhance/f/c$g$a;

    if-eqz v2, :cond_1

    .line 50
    const-string v0, "event"

    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x4377bbbf

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "network_unavailable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    :goto_0
    sget-object v0, Lccsanenhance/b/c;->c:Lccsanenhance/b/c;

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v0}, Lccsanenhance/f/b;->b()Lccsanenhance/f/b$a;

    move-result-object v0

    .line 59
    instance-of v1, v0, Lccsanenhance/f/c$g$b;

    if-eqz v1, :cond_2

    .line 60
    sget-object v0, Lccsanenhance/b/c;->b:Lccsanenhance/b/c;

    goto :goto_1

    .line 61
    :cond_2
    instance-of v1, v0, Lccsanenhance/f/c$g$a;

    if-eqz v1, :cond_3

    .line 62
    sget-object v0, Lccsanenhance/b/c;->c:Lccsanenhance/b/c;

    .line 67
    :goto_1
    iget-object v0, v0, Lccsanenhance/b/c;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsanenhance/b/b;->h(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lccsanenhance/b/a;->a()Lccsanenhance/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanenhance/b/a;->b(Lccsanenhance/b/b;)Z

    return-void

    .line 69
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support task result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "schedule invalid task:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lccsanenhance/f/a;)V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enqueue start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanenhance/f/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanenhance/g/e;->a(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lccsanenhance/a/e$b;

    invoke-direct {v0, p0, p1}, Lccsanenhance/a/e$b;-><init>(Lccsanenhance/a/e;Lccsanenhance/f/a;)V

    .line 39
    sget-object p1, Lccsanenhance/a/e;->b:Lccsanenhance/d/f;

    invoke-virtual {p1}, Lccsanenhance/d/f;->b()Lccsanenhance/d/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsanenhance/d/e;->a(Lccsanenhance/d/b;)V

    return-void
.end method

.method public final b(Lccsanenhance/a/g;)Lccsanenhance/b/b;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query last,triggerScene:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lccsanenhance/a/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanenhance/g/e;->a(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lccsanenhance/a/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanenhance/b/c;

    .line 6
    invoke-static {}, Lccsanenhance/b/a;->a()Lccsanenhance/b/a;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "task_state"

    aput-object v6, v4, v3

    const-string v3, "%s = ?"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lccsanenhance/b/c;->h:Ljava/lang/String;

    invoke-virtual {v5, v3, v2}, Lccsanenhance/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return-object v2

    .line 17
    :cond_2
    invoke-static {}, Lccsanenhance/a/a;->a()I

    move-result v1

    .line 18
    sget-object v5, Lccsanenhance/a/e$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const-string v6, ""

    const-string v7, "%s < ?"

    packed-switch v5, :pswitch_data_0

    move-object v1, v2

    goto/16 :goto_1

    .line 29
    :pswitch_0
    invoke-static {}, Lccsanenhance/b/a;->a()Lccsanenhance/b/a;

    move-result-object v5

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "user_present_retry_count"

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Lccsanenhance/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1

    .line 30
    :pswitch_1
    invoke-static {}, Lccsanenhance/b/a;->a()Lccsanenhance/b/a;

    move-result-object v5

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "activity_stopped_retry_count"

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Lccsanenhance/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1

    .line 31
    :pswitch_2
    invoke-static {}, Lccsanenhance/b/a;->a()Lccsanenhance/b/a;

    move-result-object v5

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "activity_resumed_retry_count"

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Lccsanenhance/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1

    .line 32
    :pswitch_3
    invoke-static {}, Lccsanenhance/b/a;->a()Lccsanenhance/b/a;

    move-result-object v5

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "network_connected_retry_count"

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Lccsanenhance/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_9

    .line 46
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_4

    .line 51
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v2

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanenhance/b/b;

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsanenhance/b/b;

    .line 53
    invoke-virtual {v7}, Lccsanenhance/b/b;->n()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lccsanenhance/b/b;->n()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v3, v7

    goto :goto_2

    :cond_6
    nop

    :goto_2
    if-eqz v3, :cond_4

    :cond_7
    if-nez v3, :cond_8

    return-object v2

    .line 66
    :cond_8
    sget-object v0, Lccsanenhance/a/e$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_3

    .line 80
    :pswitch_4
    invoke-virtual {v3}, Lccsanenhance/b/b;->r()I

    move-result v0

    add-int/2addr v0, v4

    .line 81
    invoke-virtual {v3, v0}, Lccsanenhance/b/b;->d(I)V

    goto :goto_3

    .line 82
    :pswitch_5
    invoke-virtual {v3}, Lccsanenhance/b/b;->d()I

    move-result v0

    add-int/2addr v0, v4

    .line 83
    invoke-virtual {v3, v0}, Lccsanenhance/b/b;->b(I)V

    goto :goto_3

    .line 84
    :pswitch_6
    invoke-virtual {v3}, Lccsanenhance/b/b;->c()I

    move-result v0

    add-int/2addr v0, v4

    .line 85
    invoke-virtual {v3, v0}, Lccsanenhance/b/b;->a(I)V

    goto :goto_3

    .line 86
    :pswitch_7
    invoke-virtual {v3}, Lccsanenhance/b/b;->l()I

    move-result v0

    add-int/2addr v0, v4

    .line 87
    invoke-virtual {v3, v0}, Lccsanenhance/b/b;->c(I)V

    .line 104
    :goto_3
    iget-object p1, p1, Lccsanenhance/a/g;->f:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lccsanenhance/b/b;->j(Ljava/lang/String;)V

    .line 105
    sget-object p1, Lccsanenhance/b/c;->a:Lccsanenhance/b/c;

    iget-object p1, p1, Lccsanenhance/b/c;->h:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lccsanenhance/b/b;->h(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lccsanenhance/b/a;->a()Lccsanenhance/b/a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lccsanenhance/b/a;->b(Lccsanenhance/b/b;)Z

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "query one:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lccsanenhance/b/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanenhance/g/e;->a(Ljava/lang/String;)V

    return-object v3

    :cond_9
    :goto_4
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public final b(Lccsanenhance/f/a;)Lccsanenhance/b/b;
    .locals 5

    .line 109
    invoke-virtual {p1}, Lccsanenhance/f/a;->getTaskIntent()Lccsanenhance/b/b;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lccsanenhance/b/b;->m()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {}, Lccsanenhance/b/a;->a()Lccsanenhance/b/a;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "package_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s = ?"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lccsanenhance/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanenhance/b/b;

    .line 114
    invoke-virtual {v1}, Lccsanenhance/b/b;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanenhance/b/c;->a(Ljava/lang/String;)Lccsanenhance/b/c;

    move-result-object v2

    .line 116
    sget-object v3, Lccsanenhance/b/c;->f:Lccsanenhance/b/c;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p1}, Lccsanenhance/b/b;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsanenhance/b/b;->h(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lccsanenhance/b/b;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lccsanenhance/b/b;->b(J)V

    .line 122
    invoke-virtual {p1}, Lccsanenhance/b/b;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsanenhance/b/b;->j(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lccsanenhance/b/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsanenhance/b/b;->e(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lccsanenhance/b/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsanenhance/b/b;->c(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lccsanenhance/b/b;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsanenhance/b/b;->i(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lccsanenhance/b/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsanenhance/b/b;->d(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lccsanenhance/b/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lccsanenhance/b/b;->a(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1, v4}, Lccsanenhance/b/b;->c(I)V

    .line 131
    invoke-virtual {v1, v4}, Lccsanenhance/b/b;->a(I)V

    .line 132
    invoke-virtual {v1, v4}, Lccsanenhance/b/b;->b(I)V

    .line 133
    invoke-virtual {v1, v4}, Lccsanenhance/b/b;->d(I)V

    .line 135
    invoke-static {}, Lccsanenhance/b/a;->a()Lccsanenhance/b/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lccsanenhance/b/a;->b(Lccsanenhance/b/b;)Z

    return-object v1

    .line 140
    :cond_1
    invoke-static {}, Lccsanenhance/b/a;->a()Lccsanenhance/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanenhance/b/a;->a(Lccsanenhance/b/b;)Z

    return-object p1
.end method

.method public b()Lccsanenhance/d/f;
    .locals 1

    .line 141
    sget-object v0, Lccsanenhance/a/e;->b:Lccsanenhance/d/f;

    return-object v0
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsanenhance/a/e;->c:Ljava/util/ArrayList;

    sget-object v1, Lccsanenhance/b/c;->a:Lccsanenhance/b/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lccsanenhance/a/e;->c:Ljava/util/ArrayList;

    sget-object v1, Lccsanenhance/b/c;->b:Lccsanenhance/b/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lccsanenhance/a/e;->c:Ljava/util/ArrayList;

    sget-object v1, Lccsanenhance/b/c;->c:Lccsanenhance/b/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Lccsanenhance/d/f;

    invoke-direct {v0}, Lccsanenhance/d/f;-><init>()V

    sput-object v0, Lccsanenhance/a/e;->b:Lccsanenhance/d/f;

    return-void
.end method
