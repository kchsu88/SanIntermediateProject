.class public Lccsancom/vungle/warren/model/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "appId"

.field public static final CACHE_BUST_COOKIE:Ljava/lang/String; = "cacheBustSettings"

.field public static final CCPA_CONSENT_STATUS:Ljava/lang/String; = "ccpa_status"

.field public static final CCPA_COOKIE:Ljava/lang/String; = "ccpaIsImportantToVungle"

.field public static final CONFIG_COOKIE:Ljava/lang/String; = "configSettings"

.field public static final CONSENT_COOKIE:Ljava/lang/String; = "consentIsImportantToVungle"

.field public static final CONSENT_STATUS_OPTED_IN:Ljava/lang/String; = "opted_in"

.field public static final CONSENT_STATUS_OPTED_OUT:Ljava/lang/String; = "opted_out"

.field public static final INCENTIVIZED_TEXT_COOKIE:Ljava/lang/String; = "incentivizedTextSetByPub"

.field public static final IS_PLAY_SERVICE_AVAILABLE:Ljava/lang/String; = "isPlaySvcAvailable"

.field public static final LAST_CACHE_BUST:Ljava/lang/String; = "last_cache_bust"

.field public static final USER_AGENT_ID_COOKIE:Ljava/lang/String; = "userAgent"


# instance fields
.field booleans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field identifier:Ljava/lang/String;

.field integers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field longs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field strings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/model/Cookie;->strings:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/model/Cookie;->booleans:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/model/Cookie;->integers:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/model/Cookie;->longs:Ljava/util/Map;

    .line 87
    iput-object p1, p0, Lccsancom/vungle/warren/model/Cookie;->identifier:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 128
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 129
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_5

    .line 131
    :cond_1
    move-object v2, p1

    check-cast v2, Lccsancom/vungle/warren/model/Cookie;

    .line 133
    .local v2, "cookie":Lccsancom/vungle/warren/model/Cookie;
    iget-object v3, p0, Lccsancom/vungle/warren/model/Cookie;->strings:Ljava/util/Map;

    if-eqz v3, :cond_2

    iget-object v4, v2, Lccsancom/vungle/warren/model/Cookie;->strings:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lccsancom/vungle/warren/model/Cookie;->strings:Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 134
    :goto_0
    return v1

    .line 135
    :cond_3
    iget-object v3, p0, Lccsancom/vungle/warren/model/Cookie;->booleans:Ljava/util/Map;

    if-eqz v3, :cond_4

    iget-object v4, v2, Lccsancom/vungle/warren/model/Cookie;->booleans:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_4
    iget-object v3, v2, Lccsancom/vungle/warren/model/Cookie;->booleans:Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 136
    :goto_1
    return v1

    .line 137
    :cond_5
    iget-object v3, p0, Lccsancom/vungle/warren/model/Cookie;->integers:Ljava/util/Map;

    if-eqz v3, :cond_6

    iget-object v4, v2, Lccsancom/vungle/warren/model/Cookie;->integers:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_6
    iget-object v3, v2, Lccsancom/vungle/warren/model/Cookie;->integers:Ljava/util/Map;

    if-eqz v3, :cond_7

    .line 138
    :goto_2
    return v1

    .line 139
    :cond_7
    iget-object v3, p0, Lccsancom/vungle/warren/model/Cookie;->longs:Ljava/util/Map;

    if-eqz v3, :cond_8

    iget-object v4, v2, Lccsancom/vungle/warren/model/Cookie;->longs:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_3

    :cond_8
    iget-object v3, v2, Lccsancom/vungle/warren/model/Cookie;->longs:Ljava/util/Map;

    if-eqz v3, :cond_9

    :goto_3
    return v1

    .line 140
    :cond_9
    iget-object v3, p0, Lccsancom/vungle/warren/model/Cookie;->identifier:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v0, v2, Lccsancom/vungle/warren/model/Cookie;->identifier:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_a
    iget-object v3, v2, Lccsancom/vungle/warren/model/Cookie;->identifier:Ljava/lang/String;

    if-nez v3, :cond_b

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 129
    .end local v2    # "cookie":Lccsancom/vungle/warren/model/Cookie;
    :cond_c
    :goto_5
    return v1
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lccsancom/vungle/warren/model/Cookie;->booleans:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/vungle/warren/model/Cookie;->booleans:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lccsancom/vungle/warren/model/Cookie;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lccsancom/vungle/warren/model/Cookie;->integers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lccsancom/vungle/warren/model/Cookie;->longs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/vungle/warren/model/Cookie;->longs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lccsancom/vungle/warren/model/Cookie;->strings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 145
    iget-object v0, p0, Lccsancom/vungle/warren/model/Cookie;->strings:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 146
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lccsancom/vungle/warren/model/Cookie;->booleans:Ljava/util/Map;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v2, v3

    .line 147
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lccsancom/vungle/warren/model/Cookie;->integers:Ljava/util/Map;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    .line 148
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lccsancom/vungle/warren/model/Cookie;->longs:Ljava/util/Map;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v2, v3

    .line 149
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lccsancom/vungle/warren/model/Cookie;->identifier:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    .line 150
    .end local v2    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 92
    .local p2, "value":Ljava/lang/Object;, "TT;"
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lccsancom/vungle/warren/model/Cookie;->strings:Ljava/util/Map;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lccsancom/vungle/warren/model/Cookie;->booleans:Ljava/util/Map;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 96
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lccsancom/vungle/warren/model/Cookie;->integers:Ljava/util/Map;

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 98
    :cond_2
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lccsancom/vungle/warren/model/Cookie;->longs:Ljava/util/Map;

    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value type is not supported!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
