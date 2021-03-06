import plotly.plotly as py
import plotly.graph_objs as go

x = ['WordCount', 'TerraSort', 'DFSIO_Read', 'DFSIO_Write', 'Aggregation', 'Join', 'Scan', 'Bayes', 'Kmeans', 'Pagerank']
y1 = [125.3, 109.4, 134.2, 146.8, 170, 204.9, 254.7, 165.5, 93, 158]
y2 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
y3 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
y4 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

trace1 = go.Bar(
    x=x,
    y=y1,
    name = '12 mount points',
    #text=y,
    textposition = 'auto',
    marker=dict(
        color='rgb(123,192,247)',
        line=dict(
            color='rgb(8,48,107)',
            width=1.5),
        ),
    opacity=0.8
)

trace2 = go.Bar(
    x=x,
    y=y2,
    name = '6 mount points',
    #text=y2,
    textposition = 'auto',
    marker=dict(
        color='rgb(59,138,217)',
        line=dict(
            color='rgb(8,48,107)',
            width=1.5),
        ),
    opacity=0.8
)

trace3 = go.Bar(
    x=x,
    y=y3,
    name = '2 mount points',
    #text=y3,
    textposition = 'auto',
    marker=dict(
        color='rgb(241,130,38)',
        line=dict(
            color='rgb(8,48,107)',
            width=1.5),
        ),
    opacity=0.8
)

trace4 = go.Bar(
    x=x,
    y=y4,
    name = '1 mount point',
    #text=y4,
    textposition = 'auto',
    marker=dict(
        color='rgb(255,219,105)',
        line=dict(
            color='rgb(8,48,107)',
            width=1.5),
        ),
    opacity=0.8
)

data = [trace1, trace2, trace3, trace4]

layout = go.Layout(
    title='Average memory used (GB)',
    yaxis=dict(
        title='Avg. memory (GB)',
        titlefont=dict(
            family='Courier New, monospace',
            size=16,
            color='rgb(107, 107, 107)'
        )
    )
)
'''
    legend=dict(
        x=0,
        y=1.0,
        bgcolor='rgba(255, 255, 255, 0)',
        bordercolor='rgba(255, 255, 255, 0)'
    ),
    barmode='group',
    bargap=0.15,
    bargroupgap=0.1
)
'''

fig = go.Figure(data=data, layout=layout)
py.plot(fig, filename='JBOD_Testing_Memory')

