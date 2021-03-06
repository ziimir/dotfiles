import React, {PureComponent} from 'react';
import {createCn} from 'bem-react-classname';

import './{{_expr_:expand('%:t:r')}}.css';

interface Props {
}

export class {{_expr_:substitute(expand('%:t:r'), '\(\%(\<\l\+\)\%(-\)\@=\)\|-\(\l\)', '\u\1\2', 'g')}} extends PureComponent<Props> {
    cn = createCn('{{_expr_:expand('%:t:r')}}');

    render() {
        return (
            <div className={this.cn()}>
                {{_cursor_}}
            </div>
        );
    }
}
