var util = require('util');
var _ = require('lodash');
var builder = require('botbuilder');
var Save = require('./saveData');

module.exports = function save(session, profileInfo) {
    session.send(
        'Ok. Saving the %s"s Profile Information into Database...',
        profileInfo.name);

    Save
        .save(profileInfo)
        .then(function (profileInfo) {
            // Results
            var title = util.format('%s"s Profile Information saved successfully :)', profileInfo.name);

            var card = {
                'contentType': 'application/vnd.microsoft.card.adaptive',
                'content': {
                    'type': 'AdaptiveCard',
                    'body': [
                        {
                            'type': 'Container',
                            'items' : [
                                    {
                            'type': 'TextBlock',
                            'text': title,
                            'size': 'extraLarge',
                            'speak': '<s>' + title + '</s>'
                        },
                        {
                            'type': 'TextBlock',
                            'text': 'Name : '+profileInfo.name,
                        },
                        {
                            'type': 'TextBlock',
                            'text': 'Contact : '+profileInfo.contact,
                        },
                        {
                            'type': 'TextBlock',
                            'text': 'Email : '+profileInfo.email,
                        },
                        {
                            'type': 'TextBlock',
                            'text': 'Experience : '+profileInfo.experience+' years',
                        },
                        {
                            'type': 'TextBlock',
                            'text': 'Company Name : '+profileInfo.company,
                        },
                        {
                            'type': 'TextBlock',
                            'text': 'Profile : '+profileInfo.profile,
                        },
                        {
                            'type': 'TextBlock',
                            'text': 'current CTC : '+profileInfo.ctc,
                        },
                        {
                            'type': 'TextBlock',
                            'text': 'Exp. CTC : '+profileInfo.ectc,
                        },
                        {
                            'type': 'TextBlock',
                            'text': 'Notice Period : '+profileInfo.notice,
                        }
                            ]
                        }
                        
                    ]
                }
            };

            var msg = new builder.Message(session)
                .addAttachment(card);
            session.send(msg);
        });

    session.endDialog();
};
